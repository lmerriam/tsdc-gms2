/// Init the slime
event_inherited();
image_speed = .1 * (30/room_speed);
base_image_speed = image_speed;

// Damage
stats[? "Level"] = 1;
stats[? "Damage"] = 3;
stats[? "Max Health"] = 20;
stats[? "Health"] = stats[? "Max Health"];
stats[? "Experience"] = 3;
stats[? "Knockback"] = 5;
stats[? "Speed"] = 1 * (30/room_speed);

// Loot
loot = ds_map_create();
ds_map_add(loot, Weapon_Pistol, .2);
ds_map_add(loot, Weapon_Shotgun, .2);
ds_map_add(loot, Weapon_SMG, .2);
ds_map_add(loot, Weapon_Bomb, .2);
ds_map_add(loot, Weapon_Blade, .2);
ds_map_add(loot, Scroll_Vorpal, .2);
ds_map_add(loot, Scroll_Projectile, .2);
ds_map_add(loot, Scroll_Column, .2);
ds_map_add(loot, Scroll_Cone, .2);
ds_map_add(loot, Scroll_Cone_Pull, .2);
ds_map_add(loot, Scroll_Area, .2);
ds_map_add(loot, Scroll_Blink, .2);
ds_map_add(loot, Health, .2);

