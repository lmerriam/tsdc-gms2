///scr_find_spawn_point(x,y,range,obj,lvl)
var targetx = argument[0];
var targety = argument[1];
var range = argument[2];
var obj = argument[3];
var level = argument[4];

//show_debug_message("Finding a spawn point for: " + string(obj) + object_get_name(obj));

// Find a clear position to spawn the object
do {
    var xx = targetx + random_range(-range,range); //Set random x
    var yy = targety + random_range(-range,range); //Set random y
} until place_empty(xx,yy);

// Spawn the chosen enemy at the chosen coordinates
var inst = instance_create(xx, yy, obj);

// Level the instance
inst.stats[? "Level"] = level;
with (inst) event_user(0);

// Return instance
return inst;
