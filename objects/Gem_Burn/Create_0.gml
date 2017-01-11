/// Init gem
event_inherited();

image_blend = c_red;

buffs[? "burn_duration"] = irandom_range(5,10) * room_speed;
buffs[? "burn_interval"] = 1 * room_speed;
buffs[? "burn_damage"] = irandom_range(1,2);

properties[? "Name"] = "Fiery gem";

show_debug_message("Gem stats index: " + string(stats));