/// Init
event_inherited();
scr_register_interactable(id);

image_speed = 0;

stats = ds_map_create();
properties[? "Loot"] = choose("Shotgun","Hammer","Pistol","SMG");
properties[? "Open"] = false;
stats[? "Level"] = 1;
properties[? "Stats"] = stats;

//global.chests[? string(x)+string(y)+string(room)] = properties;
//scr_commit_save(global.chests,"Chests");