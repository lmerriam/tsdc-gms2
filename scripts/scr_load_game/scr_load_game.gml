///scr_load_game()
// Open the save file and decode it to a ds_map
var file = file_text_open_read(working_directory + "save.json");
var save_data = json_decode(file_text_read_string(file));
file_text_close(file);

// Load the inventory
var inv_map = save_data[? "Inventory"];

for (var column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (var row = 0; row < ds_grid_height(global.inventory_slots); row++) {

        // Get the inventory slot and find the related item
        var slot = string(column+row*4);
        global.inventory_slots[# column,row] = inv_map[? slot];
    }
}

// Clean up after yourself
// todo: destroy this ish
// ds_map_destroy(save_data);

