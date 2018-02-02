/// @description scr_confer_effects(target,source)
/// @param target
/// @param source

//TODO: how to stack effects?

var effects = argument0;
var buffs = argument1;

// Check whether there is a source to pull from or not
if (effects != undefined and buffs != undefined and ds_exists(effects,ds_type_map) and ds_exists(buffs,ds_type_map)) {
		//scr_copy_child_maps(effects,buffs);
		
		var key = ds_map_find_first(buffs);
		var num_buffs = ds_map_size(buffs);
		for(var i=0;i<num_buffs;i++) {
			effects[? key] = ds_map_create();
			show_debug_message(string(i) + " " + string(key));
			ds_map_copy(effects[? key],buffs[? key]);
			//show_debug_message("Copying: " + key);
			key = ds_map_find_next(buffs,key);
		}
		
} else {
	show_debug_message("Can't confer, missing effects or buffs");
}