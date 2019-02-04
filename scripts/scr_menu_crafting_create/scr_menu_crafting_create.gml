global.components = scr_load_json("components");
global.recipes = ds_list_create();

// Import recipes from all components
var component = ds_map_find_first(global.components);
for (var i=0; i<ds_map_size(global.components); i++) {
	var stats = global.components[? component];
	ds_list_add(global.recipes,stats);
	stats[? "id"] = component;
	component = ds_map_find_next(global.components,component);
}
scr_sort_list_of_maps(global.recipes,"damage");

ui_list_crafting = scr_ui_list_create(global.recipes,16,64,128,global.window_height-16,32);