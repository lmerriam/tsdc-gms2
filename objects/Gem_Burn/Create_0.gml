/// Init gem
event_inherited();

name = "Fiery gem";

image_blend = c_red;

buffs = ds_map_create();
buffs[? "burn_duration"] = irandom_range(5,10) * room_speed;
buffs[? "burn_interval"] = 1 * room_speed;
buffs[? "burn_damage"] = irandom_range(1,2);

// Init text
text[0,0] = name;
text[0,1] = "";
text[0,2] = c_white;

text[1,0] = "Burn duration: " + string(buffs[? "burn_duration"]);
text[1,1] = "";
text[1,2] = c_white;

text[2,0] = "Burn damage: " + string(buffs[? "burn_duration"] * buffs[? "burn_interval"] * buffs[? "burn_damage"]);
text[2,1] = "";
text[2,2] = c_white;

