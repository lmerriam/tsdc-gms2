var spawns = properties[? "Spawns"];
var spawned = properties[? "Spawned"];
var level = properties[? "Level"];

for (var i = 0; i < ds_list_size(spawns); i++) {
	var inst = scr_find_spawn_point(x,y,128,spawns[| i],level);
	ds_list_add(spawned,inst);
}