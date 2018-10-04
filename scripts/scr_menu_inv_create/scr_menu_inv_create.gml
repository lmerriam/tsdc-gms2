/// Init the inventory

// Load equipment 
//global.equipment = scr_load_json("equipment");
inventory_props = scr_load_json("equipment_types");
global.buffs = scr_load_json("buffs");
global.rarity = ["Common","Uncommon","Rare","Epic"];
global.equipment_library = ds_map_create();

// Set up equipment library
var size = ds_list_size(inventory_props);
for (var i=0; i<size; i++) {
	var props = inventory_props[| i];
	var type = props[? "type"];
	var eqp = scr_load_json("equipment_" + string_lower(type));
	
	var key = ds_map_find_first(eqp)
	for (var j=0; j<ds_map_size(eqp); j++) {
		var item = eqp[? key];
		ds_map_add(global.equipment_library,key,item);
		item[? "type"] = type;
		key = ds_map_find_next(eqp,key);
	}
	//ds_map_add(global.equipment,type,eqp);
}

// Set up stats list
inv_tooltip_stats = noone;
inv_tooltip_stats[0] = "Level";
inv_tooltip_stats[1] = "Damage";
inv_tooltip_stats[2] = "Spell Damage";
inv_tooltip_stats[3] = "Atk Delay";
inv_tooltip_stats[4] = "Fatigue";
inv_tooltip_stats[5] = "Defense";
inv_tooltip_stats[6] = "Speed";
inv_tooltip_stats[7] = "Health";
inv_tooltip_stats[8] = "Health Regen";
inv_tooltip_stats[9] = "Stamina";
inv_tooltip_stats[10] = "Stamina Regen";
inv_tooltip_stats[11] = "Knockback";
inv_tooltip_stats[12] = "Spell Knockback";
inv_tooltip_stats[13] = "Cooldown";

// Set up inventories
inventory_current = "Weapon";
inv_item_selected = noone;

global.inventory = ds_map_create();
for (var i=0;i<ds_list_size(inventory_props);i++) {
	var props = inventory_props[| i];
	var type = props[? "type"];
	global.inventory[? type] = ds_list_create();
}

// Set up equipment slots
equipment_index = ["Weapon","Armor","Spell","Mod"];

global.equipment_slots = ds_map_create();
for (var i=0;i<array_length_1d(equipment_index);i++) {
	var key = equipment_index[i];
	global.equipment_slots[? key] = noone;
}

scr_equip(scr_init_equipment("Shotgun"));
scr_equip(scr_init_equipment("Heavy Armor"));
scr_equip(scr_init_equipment("Mod"));
scr_equip(scr_init_equipment("Projectile"));
scr_calc_stats();

repeat(26) scr_send_to_inv(scr_init_equipment(choose("SMG","Heavy Armor","Mod","Scrap Metal")));

// Set up 
inv_padding = 32;
inv_pane_margin = 24;
inv_y1 = TAB_BAR_HEIGHT + inv_padding;
inv_x1 = inv_padding;

// Inv tab area
inv_tab_size = 64;
inv_tab_y1 = inv_y1;
inv_tab_y2 = inv_y1 + inv_tab_size * ds_list_size(inventory_props);
inv_tab_x1 = inv_x1;
inv_tab_x2 = inv_tab_x1 + inv_tab_size;

// Init inventory properties
//inventory_props = ds_map_create();
for (var i=0; i<ds_list_size(inventory_props); i++) {
	var inv = inventory_props[| i];
	var inv_name = inv[? "type"];
	//var inv = ds_map_create();
	//inventory_props[? inv_name] = inv;
	
	// Set up the tab buttons for the different inventories
	var x1 = inv_padding;
	var x2 = x1 + inv_tab_size;
	var y1 = inv_y1 + inv_tab_size*i;
	var y2 = y1 + inv_tab_size;	
	inv[? "tab x1"] = x1;
	inv[? "tab x2"] = x2;
	inv[? "tab y1"] = y1;
	inv[? "tab y2"] = y2;
	inv[? "tab sprite"] = asset_get_index("spr_inventory_tab_" + string_lower(inv_name));
}

// Init the player inventory list
var width = 384;
var x1 = inv_tab_x2 + inv_pane_margin;
var y1 = inv_y1;
var x2 = x1 + width;
var y2 = global.window_height-inv_padding;
var item_height = inv_tab_size;
inv_list_player = scr_ui_scrolling_list_create(x1,y1,x2,y2,item_height);

equipment_props = ds_map_create();

// Set up inventory tooltip
inv_tooltip_width = 256;
inv_tooltip_height = 0;
inv_tooltip_line_height = 24;
inv_tooltip_x1 = x2 + inv_pane_margin;
inv_tooltip_x2 = inv_tooltip_x1 + inv_tooltip_width;
inv_tooltip_y1 = inv_y1;
inv_tooltip_y2 = inv_y1 + inv_tooltip_height;

// Equip btn
inv_equip_btn_height = 48;
inv_equip_btn_width = inv_tooltip_width;
inv_equip_btn_x1 = inv_tooltip_x1;
inv_equip_btn_x2 = inv_tooltip_x2;
inv_equip_btn_y1 = 0;
inv_equip_btn_y2 = 0;

// Drop btn