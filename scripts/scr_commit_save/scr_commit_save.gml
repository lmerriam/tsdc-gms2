/// @param Save data
/// @param Filename
var save_data = argument0;
var filename = argument1;


var file = file_text_open_write(working_directory+filename+".json");
file_text_write_string(file,json_encode(save_data));
file_text_close(file);
ds_map_destroy(save_data);