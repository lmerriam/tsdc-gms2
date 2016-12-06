/// Init gem
event_inherited();

name = "Combustible gem";

image_blend = c_orange;

buffs = ds_map_create();
buffs[? "combust_duration"] = irandom_range(5,10) * room_speed;
buffs[? "combust_damage"] = irandom_range(3,7);

