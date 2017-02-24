/// Seed the inventory
ds_grid_clear(properties[? "Inventory"], noone);
var item_count = irandom_range(6,12);
var level = ds_map_find_value(properties[? "Stats"],"Level");
show_debug_message("Creating inv with level: " + string(level));
for(var i = 0; i<item_count; i++) {
	var obj = choose(Weapon_Bomb,Weapon_Shotgun,Weapon_Hammer,Weapon_SMG,Gem_Burn,Gem_Combust,Gem_Freeze);
	var item = instance_create(0,0,obj);
	scr_level_instance(item,level);
	scr_send_to_inv(item.properties,properties[? "Inventory"]);
	instance_destroy(item);
}