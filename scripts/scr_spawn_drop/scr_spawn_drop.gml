///scr_spawn_drop(x,y,obj,level)
var targetx = argument[0];
var targety = argument[1];
var obj = argument[2];
var level = argument[3];

// Create the instance
var drop = scr_create_instance_with_level(targetx, targety, obj, level);

// Apply a random impulse
var xlocal = choose(3, -3);
var ylocal = choose(3, -3);
var xforce_local = choose(random_range(60,180), -random_range(60,180));
var yforce_local = choose(random_range(60,180), -random_range(60,180));
with(drop) physics_apply_local_force(xlocal,ylocal,xforce_local,yforce_local);

return drop;
