///scr_save_game()

// Save player X and Y

// Save current room

// Save inventory

// Save player stats

// Save chests

// Save quests

// Combine all the maps and save dat shit
var save_data = ds_map_create();
ds_map_add_map(save_data,"Inventory",inventory_data);
//ds_map_add_map(save_data,"Instances",instance_data);

// Open the save file and save the data to it
var file = file_text_open_write(working_directory + "save.txt");
file_text_write_string(file,json_encode(save_data));
file_text_close(file);
ds_map_destroy(save_data);

