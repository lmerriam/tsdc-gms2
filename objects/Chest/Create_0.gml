/// Init
event_inherited();

image_speed = 0;

stats = ds_map_create();
stats[? "Loot"] = choose(Weapon_Shotgun,Weapon_Bomb,Weapon_Pistol,Weapon_SMG);
stats[? "Open"] = false;
stats[? "Level"] = 1;
properties[? "Stats"] = stats;