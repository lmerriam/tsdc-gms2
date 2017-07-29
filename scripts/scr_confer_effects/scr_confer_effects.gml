/// scr_confer_effects(target,source)
var target = argument0;
var source = argument1;

// Check whether there is a source to pull from or not
if (ds_exists(source,ds_type_map)) {

	var buffs = source[? "Buffs"];
	var effects = target[? "Effects"];

	if (ds_exists(effects,ds_type_map) and ds_exists(buffs,ds_type_map)) {
		ds_map_copy(effects, buffs);
	} else {
		show_debug_message("No buffs to confer as effects");
	}

} else {
	show_debug_message("scr_confer_effects: No properties received, there may be no gem equipped");
}