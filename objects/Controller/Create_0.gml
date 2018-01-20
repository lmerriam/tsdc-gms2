device_mouse_dbclick_enable(false);

// Create chest registry
global.chests = ds_map_create();

// Equipment 
global.equipment = scr_load_json("equipment");
global.buffs = scr_load_json("buffs");
global.rarity = ["Common","Uncommon","Rare","Epic"];

if (os_type == os_android) {
	control_scheme = scr_controls_touch;
	move_touch = 0;
	aim_touch = 0;
} else {
	control_scheme = scr_controls_mouse;
}