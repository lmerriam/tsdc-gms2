/// Spawn instances

var size = ds_list_size(spawns);
for (var i = 0; i < size; i += 1)
{
	show_debug_message("Trying to spawn!");
    scr_find_spawn_point(x,y,64,spawns[| i],level);
}
