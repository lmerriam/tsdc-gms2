device_mouse_dbclick_enable(false);

// Where do we go after init room sets everything up
#macro START_ROOM rm_test1
global.rm_current = START_ROOM;
global.rm_previous = noone;

// Create chest registry
global.chests = ds_map_create();

// Set up location registry
//global.locations = ds_list_create();

global.npcs = ds_list_create();

// Set up interactable registry
global.interactables = ds_list_create();

// Equipment 
global.equipment = scr_load_json("equipment");
global.buffs = scr_load_json("buffs");
global.rarity = ["Common","Uncommon","Rare","Epic"];

if (os_type == os_android or os_type == os_ios) {
	control_scheme = scr_controls_touch;
	move_touch = 0;
	aim_touch = 0;
} else {
	control_scheme = scr_controls_mouse;
}

alarm[1] = 1;