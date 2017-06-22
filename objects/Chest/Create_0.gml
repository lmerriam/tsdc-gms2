/// Init
event_inherited();

image_speed = 0;

stats = ds_map_create();
properties[? "Loot"] = choose(Weapon_Shotgun,Weapon_Bomb,Weapon_Pistol,Weapon_SMG);
properties[? "Open"] = false;
stats[? "Level"] = 1;
properties[? "Stats"] = stats;

global.chests[? string(x)+string(y)+string(room)] = properties;
scr_commit_save(global.chests,"Chests");