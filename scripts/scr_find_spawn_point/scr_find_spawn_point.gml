/// @description Find a spawn point
/// @param target_x Target X
/// @param target_y Target Y
/// @param range Range
/// @param obj Object
/// @param lvl Level

var targetx = argument[0];
var targety = argument[1];
var range = argument[2];
var obj = argument[3];
var level = argument[4];

//show_debug_message("Finding spawn for " + object_get_name(obj) + " with level: " + string(level));

// Find a clear position to spawn the object
do {
    var xx = targetx + random_range(-range,range); //Set random x
    var yy = targety + random_range(-range,range); //Set random y
} until place_empty(xx,yy);

// Spawn the chosen enemy at the chosen coordinates
var inst = instance_create_layer(xx, yy, "entities", obj);

// Level the instance
scr_level_instance(inst,level);

// Return instance
return inst;
