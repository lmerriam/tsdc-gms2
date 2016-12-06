/// Set up spawns and level
event_inherited();

stats[? "Level"] = 5;
repeat(3) ds_list_add(spawns,Slime);

