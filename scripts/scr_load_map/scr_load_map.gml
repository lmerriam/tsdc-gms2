///scr_load_map(roomname)
///Tiled_GMS v0.alpha, by @angrymobofsteve
///Expanded by @captfitz

var roomname = argument0;
var tileheight, tilewidth;

var data_file = file_text_open_read(working_directory + roomname + ".json");
var json_data = "";
while (!file_text_eof(data_file))
{

    json_data += file_text_read_string(data_file);
    file_text_readln(data_file);
}
file_text_close(data_file); 

if ( !is_undefined(json_data) )
{
    var json = json_decode( json_data );
    show_debug_message("read from file");
}
else
    exit;

global.tilewidth = ds_map_find_value( json, "tilewidth" );
global.tileheight = ds_map_find_value( json, "tileheight" );
var map_width = ds_map_find_value( json, "width" );
var map_height = ds_map_find_value( json, "height" );
var lst_tileset = ds_map_find_value( json, "tilesets" );
var tileset = ds_list_find_value(lst_tileset, 0);
var tileset_img = ds_map_find_value(tileset, "image");
var tile_cols = ds_map_find_value(tileset, "imagewidth") / global.tilewidth;
var tile_rows = ds_map_find_value(tileset, "imageheight") / global.tileheight;
var lyr_depth = 1000;
var tileset_bg = background_add(working_directory + tileset_img, 1, false );
var lst_layers = ds_map_find_value( json, "layers" );

// Clear existing DS if they exist
global.collision_tiles = ds_grid_create(map_width,map_height);
global.map_tiles = ds_grid_create(map_width,map_height);
global.visible_tiles = ds_grid_create(map_width,map_height);
ds_grid_clear(global.visible_tiles,false);

// Loop through the tile and object layers in the JSON
for ( var layer_i = 0; layer_i < ds_list_size(lst_layers); layer_i++){
    var layer_object = ds_list_find_value( lst_layers, layer_i);
    var layer_type = ds_map_find_value( layer_object, "type");
    show_debug_message(layer_type);
    switch(layer_type){
        case "tilelayer":
            var layer_height = ds_map_find_value( layer_object, "height" );
            var layer_width = ds_map_find_value( layer_object, "width" );
            var layer_properties = ds_map_find_value( layer_object, "properties");
            var collision = ds_map_find_value( layer_properties, "collision" );
            lyr_depth -= layer_i;
            var lst_data = ds_map_find_value( layer_object, "data" );
            
            // Build collision grid
            if (collision == true) {
                for (var row = 0; row < map_height; row++ ){
                    for (var col = 0; col < map_width; col++ ){
                        var i = ( row * map_width) + col;           
                        var tile_id = ds_list_find_value(lst_data, i);
                        if ( tile_id > 0 ) {
                            global.collision_tiles[# col,row] = true;
                        } else {
                            global.collision_tiles[# col,row] = false;
                        }                       
                    }
                }
            }
            
            // Build tile grid
            for ( j = 0; j < map_height; j++ ){
                for ( k = 0; k < map_width; k++ ){   
                    var i = ( j * map_width) + k;          
                    var tile_id = ds_list_find_value(lst_data, i);
                    
                    if ( tile_id > 0 ) {
                        //var tile = ds_map_create();
                        var tile=0;
                        tile[0] = tile_id;
                        tile[1] = false;
                        tile[2] = lyr_depth;
                        tile[3] = tileset_bg;
                        tile[4] = (tile_id - 1) mod tile_cols * global.tilewidth;
                        tile[5] = (tile_id - 1) div tile_rows * global.tileheight;
                        tile[6] = k * global.tilewidth;
                        tile[7] = j * global.tileheight;
                        global.map_tiles[# k, j] = tile;
                    }                
                }
            }
        break;
        case "objectgroup":
            // Load up the room objects
            var lst_objects = ds_map_find_value( layer_object, "objects");
            
            // Place objects
            for ( var o = 0; o < ds_list_size( lst_objects ); o++ ) {
                var object_map = ds_list_find_value( lst_objects, o);
                var object_type = asset_get_index( ds_map_find_value( object_map, "type"));
                var object_x = ds_map_find_value( object_map, "x" );
                var object_y = ds_map_find_value( object_map, "y" );
                var object_properties = ds_map_find_value( object_map, "properties");
                if object_exists(object_type){
                    var object = instance_create( object_x, object_y, object_type);
                    object.x = object_x;
                    object.y = object_y;
                    
                    // Pull in custom object properties
                    if (object_properties != undefined) scr_custom_properties(object,object_properties);
                }
            }
        break;
        default:
            show_message("unknown layer type");
        break;
    }
    //show_debug_message("Layer object: " + string(layer_object));
}
global.room_loaded = true;
ds_map_destroy(json);

