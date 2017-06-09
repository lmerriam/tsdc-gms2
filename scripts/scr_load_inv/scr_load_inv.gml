///scr_load_inv()
/// @param Inventory index
/// @param Filename
var inventory = argument0;
var filename = argument1;

var file = file_text_open_read(working_directory + filename + ".json");
var save_data = json_decode(file_text_read_string(file));
file_text_close(file);

// Load the inventory
var inv_map = save_data[? "Inventory"];

for (var column = 0; column < ds_grid_width(inventory); column++) {
    for (var row = 0; row < ds_grid_height(inventory); row++) {

        // Get the inventory slot and find the related item
        var slot = string(column+row*4);
		if (ds_exists(inv_map[? slot],ds_type_map)) {
			inventory[# column,row] = ds_map_create();
			ds_map_copy(inventory[# column,row],inv_map[? slot]);
		} else {
			inventory[# column,row] = noone;
		}
    }
}

ds_map_destroy(save_data);