/// scr_level_instance(inst,level)
var inst = argument0;
var level = argument1;

scr_set_instance_stat(inst,"Level",level);
with (inst) event_user(0);