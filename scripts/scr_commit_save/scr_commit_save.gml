/// @param Index
/// @param Filename
var index = argument0;
var filename = argument1;


var file = file_text_open_write(working_directory+filename+".json");
file_text_write_string(file,json_encode(index));
file_text_close(file);
//todo: create a script to copy the maps/lists above so that we can destroy the parent save_data DS without borking the game
//ds_map_destroy(save_data);