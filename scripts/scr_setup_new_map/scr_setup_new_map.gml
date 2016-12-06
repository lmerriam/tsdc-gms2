///scr_setup_new_map(roomname)
var tileheight, tilewidth;
var roomname = argument0;

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

show_debug_message(roomname + ": " + string(map_width) + " x " + string(map_height));

ds_map_destroy(json);

// Create the new room
var new_room = room_duplicate(rm_template_overworld);
room_set_width(new_room,map_width * global.tilewidth);
room_set_height(new_room,map_height * global.tileheight);
// Goto the new room
room_goto(new_room);
// Store the new current room
global.current_room = roomname;
global.room_loaded = false;


