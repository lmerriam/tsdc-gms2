///scr_load_instance(item_map)
var item = argument0;
var index = item[? "object_index"];
var xx = item[? "x"];
var yy = item[? "y"];

// Create the instance
var inst = instance_create_layer(xx,yy,"entities",index);
inst.properties = item[? "Properties"];
return inst;
