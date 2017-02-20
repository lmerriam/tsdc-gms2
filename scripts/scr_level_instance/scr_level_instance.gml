/// scr_level_instance(inst,level)
var inst = argument0;
var level = argument1;

inst.stats[? "Level"] = level;
with (inst) event_user(0);