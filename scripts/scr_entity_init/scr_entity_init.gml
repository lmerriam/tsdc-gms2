/// @param id
var inst = argument0;

inst.properties = ds_map_create();
inst.effects = noone;
inst.damaged_by = noone;
inst.bleeds = false;

// @TODO: this should be systematized
destroy_quest_id = false;

phy_fixed_rotation = true;

ds_list_add(global.entities,inst);