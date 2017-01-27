///scr_load_game()
// Open the save file and decode it to a ds_map
var file = file_text_open_read(working_directory + "save.txt");
var save_data = json_decode(file_text_read_string(file));
file_text_close(file);

// Clear the inventory
ds_grid_clear(global.inventory_slots, noone);

// Load the inventory
inventory_data = save_data[? "Inventory"];

for (column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (row = 0; row < ds_grid_height(global.inventory_slots); row++) {

        // Get the inventory slot and find the related item
        var slot = (row*4)+column;
        var item_data = ds_map_find_value(inventory_data, string(slot));

        // Populate the slot with the correct item
        if (!is_undefined(item_data[? "object_index"])) {
            global.inventory_slots[# column,row] = scr_load_instance(item_data);
        }
    }
}

// Load instances
// First destroy existing
/*
with (Spawner_Parent) instance_destroy();

var instance_data = save_data[? "Instances"];

var current_key = ds_map_find_first(instance_data);
for (var i = 0; i < ds_map_size(instance_data); i++) {
    var inst = instance_data[? current_key];
    scr_load_instance(inst);
    current_key = ds_map_find_next(instance_data,current_key);
}
*/

// Clean up after yourself
ds_map_destroy(save_data);

