/// Init gem
event_inherited();

name = "Frozen gem";

image_blend = c_aqua;

buffs = ds_map_create();
buffs[? "freeze_duration"] = irandom_range(5,10) * room_speed;
buffs[? "freeze_slow"] = random_range(.3, .5);

