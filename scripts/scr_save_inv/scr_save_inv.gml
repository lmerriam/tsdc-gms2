/// @param Inventory index
/// @param Filename
var inventory = argument0;
var filename = argument1;

// Set up save map
var save_data = ds_map_create();

// Save inventory
var inv_map = ds_map_create();
for (var col=0; col<ds_grid_width(inventory); col++) {
	for (var row=0; row<ds_grid_height(inventory); row++) {
		var item = inventory[# col,row];
		var slot = col + row*4;
		if(item != noone) {
			ds_map_add_map(inv_map,slot,item);
			ds_map_replace_map(inv_map[? slot],"Buffs",item[? "Buffs"]);
			ds_map_replace_map(inv_map[? slot],"Stats",item[? "Stats"]);
		} else {
			inv_map[? slot] = noone;
		}
	}
}
ds_map_add_map(save_data,"Inventory",inv_map);
scr_commit_save(save_data,filename);