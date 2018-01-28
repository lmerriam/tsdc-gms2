/// Seed the inventory
ds_grid_clear(properties[? "Inventory"], noone);
var item_count = irandom_range(6,12);
var level = ds_map_find_value(properties[? "Stats"],"Level");

for(var i = 0; i<item_count; i++) {
	var obj = choose("Bomb","Shotgun","Hammer","SMG","Gem Burn","Gem Freeze");
	item = scr_spawn_equipment(x,y,obj);
	scr_send_to_inv(item.properties,properties[? "Inventory"]);
	instance_destroy(item);
}