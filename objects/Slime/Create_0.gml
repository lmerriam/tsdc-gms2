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
ds_map_add(loot, "Pistol", .2);
ds_map_add(loot, "Shotgun", .2);
ds_map_add(loot, "SMG", .2);
ds_map_add(loot, "Bomb", .2);
ds_map_add(loot, "Blade", .2);
ds_map_add(loot, "Vorpal", .2);
ds_map_add(loot, "Projectile", .2);
ds_map_add(loot, "Column", .2);
ds_map_add(loot, "Push", .2);
ds_map_add(loot, "Pull", .2);
ds_map_add(loot, "Area", .2);
ds_map_add(loot, "Blink", .2);