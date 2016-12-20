/// scr_create_instance_with_level(x,y,obj,level)
xx = argument[0];
yy = argument[1];
obj = argument[2];
level = argument[3];

inst = instance_create_layer(xx,yy,"entities",obj); // Create the instance
inst.stats[? "Level"] = level; // Assign the level
with(inst) event_user(0); // Run the levelling script

return inst;
