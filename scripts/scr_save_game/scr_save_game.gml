///scr_save_game()

// Create map to save inventory to
var inventory_data = ds_map_create()

// Iterate through inventory
for (column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (row = 0; row < ds_grid_height(global.inventory_slots); row++) {

        // Activate the item in this slot
        var item = ds_grid_get(global.inventory_slots,column,row);// global.inventory_slots[# column, row];

        // Get slot so we can return it to the right place
        var slot = (row*4) + column;

        // Save the items data to it's own map
        var item_data = ds_map_create();
        if (item != noone) {
            scr_save_instance(item,item_data);
        }
        // Nest the item_data map
        ds_map_add_map(inventory_data,slot,item_data);
    }
}

// Save spawners
//var instance_data = ds_map_create();
//instance_activate_object(Spawner_Parent);
//with (Spawner_Parent) scr_save_instance(id,instance_data);

// Combine all the maps and save dat shit
var save_data = ds_map_create();
ds_map_add_map(save_data,"Inventory",inventory_data);
//ds_map_add_map(save_data,"Instances",instance_data);

// Open the save file and save the data to it
var file = file_text_open_write(working_directory + "save.txt");
file_text_write_string(file,json_encode(save_data));
file_text_close(file);
ds_map_destroy(save_data);

