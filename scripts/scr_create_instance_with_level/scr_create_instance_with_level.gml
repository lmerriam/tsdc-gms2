/// scr_create_instance_with_level(x,y,obj,level)
var xx = argument[0];
var yy = argument[1];
var obj = argument[2];
var level = argument[3];

var inst = instance_create_layer(xx,yy,"entities",obj); // Create the instance
scr_set_instance_stat(inst, "Level",level); // Assign the level
with(inst) event_user(0); // Run the levelling script

return inst;
