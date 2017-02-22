/// scr_confer_effects(target,source)
var target = argument0;
var source = argument1;

var buffs = source[? "Buffs"];
var effects = target[? "Effects"];

if (ds_exists(effects,ds_type_map) and ds_exists(buffs,ds_type_map)) {
    ds_map_copy(effects, buffs);
} else {
	show_debug_message("Can't confer effects, missing DS");
}