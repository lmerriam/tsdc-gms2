///scr_save_game()
var save_data = ds_map_create();

// Save player spawn location
// do this every time it gets set to a new location

// Save current room
ds_map_add(save_data,"Current Room",room_get_name(room));
// do this every time the room changes, make sure to also change spawn location

// on equip and send to inv

// Save player stats
ds_map_add_map(save_data,"Player Base Stats",Player.base_stats);
ds_map_add_map(save_data,"Player Stats",Player.stats);

// Save chests
ds_map_add_map(save_data,"Chests",global.chests);

// Save quests
ds_map_add_list(save_data,"Active Quests",global.active_quests);

// Open the save file and save the data to it
var file = file_text_open_write(working_directory + "save.json");
file_text_write_string(file,json_encode(save_data));
file_text_close(file);
//todo: create a script to copy the maps/lists above so that we can destroy the parent save_data DS without borking the game
//ds_map_destroy(save_data);