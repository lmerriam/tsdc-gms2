/// scr_level_instance(inst,level)
var inst = argument0;
var level = argument1;

show_debug_message("Setting " + object_get_name(inst.object_index) + " level to: " + string(level));
scr_set_instance_stat(inst,"Level",level);
with (inst) event_user(0);