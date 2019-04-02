/// @description Insert description here
// You can write your code in this editor
//procgen_method_settings = scr_load_json("procgen_method_settings");
//procgen_seed_settings = scr_load_json("procgen_seed_settings");

tile_size = 32;

//chunk_grid = ds_grid_create(rm_chunk_width,rm_chunk_height);
//for(var chunk_x=0; chunk_x<rm_chunk_width; chunk_x++) {
//	for(var chunk_y=0; chunk_y<rm_chunk_height; chunk_y++) {
//		chunk_grid[# chunk_x,chunk_y] = ds_grid_create(chunk_size,chunk_size);
//	}
//}

rm_tile_width = room_width/tile_size;
rm_tile_height = room_height/tile_size;

tile_grid = ds_grid_create(rm_tile_width,rm_tile_height);
ds_grid_clear(tile_grid,false);

region_paths = ds_list_create();