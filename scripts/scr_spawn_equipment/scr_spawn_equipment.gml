/// @description Spawn equipment
/// @param spawn_x
/// @param spawn_y
/// @param equipment

var spawn_x = argument0;
var spawn_y = argument1;
var item_name = argument2;

// Spawn the equipment
var inst = instance_create_layer(spawn_x,spawn_y,"entities",Equipment_Parent);

// Init the equipment
scr_init_equipment(inst,item_name);

return inst;