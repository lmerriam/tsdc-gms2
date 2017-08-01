/// Init gem
event_inherited();

image_blend = c_red;

var burn = ds_map_create();
burn[? "Duration"] = irandom_range(5,10) * room_speed;
burn[? "Damage"] = irandom_range(1,2);
buffs[? "Burn"] = burn;

properties[? "Name"] = "Fiery gem";

//show_debug_message("Gem stats index: " + string(stats));