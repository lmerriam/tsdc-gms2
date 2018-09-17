/// Init the inventory

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
inventory_index = ["Weapon","Armor","Spell","Gem","Quest"];
inventory_current = "Weapon";
inv_item_selected = noone;

global.inventory = ds_map_create();
for (var i=0;i<array_length_1d(inventory_index);i++) {
	var key = inventory_index[i];
	global.inventory[? key] = ds_list_create();
}


// Set up equipment slots
equipment_index = ["Weapon","Armor","Spell","Gem"];

global.equipment_slots = ds_map_create();
for (var i=0;i<array_length_1d(equipment_index);i++) {
	var key = equipment_index[i];
	global.equipment_slots[? key] = noone;
}

scr_equip(scr_init_equipment("Shotgun"));
scr_equip(scr_init_equipment("Heavy Armor"));
scr_equip(scr_init_equipment("Gem"));
scr_equip(scr_init_equipment("Projectile"));
scr_calc_stats();

repeat(16) scr_send_to_inv(scr_init_equipment(choose("SMG","Pistol","Bomb")));

// Set up 
inv_padding = 32;
inv_y1 = TAB_BAR_HEIGHT + inv_padding;
inv_x1 = inv_padding;

// Inv tab area
inv_tab_size = 64;
inv_tab_y1 = inv_y1;
inv_tab_y2 = inv_y1 + inv_tab_size * array_length_1d(inventory_index);
inv_tab_x1 = inv_x1;
inv_tab_x2 = inv_tab_x1 + inv_tab_size;

// Init inventory properties
inventory_props = ds_map_create();
for (var i=0; i<array_length_1d(inventory_index); i++) {
	var inv_name = inventory_index[i];
	var inv = ds_map_create();
	inventory_props[? inv_name] = inv;
	
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

equipment_props = ds_map_create();

// Set up inventory list dimensions
inv_list_item_height = inv_tab_size;
inv_list_item_width = 384;
inv_list_x1 = inv_tab_x2 + inv_padding;
inv_list_x2 = inv_list_x1+inv_list_item_width;
inv_list_y1 = inv_y1;
inv_list_height = global.window_height - inv_list_y1 - inv_padding;
inv_list_y2 = inv_list_y1 + inv_list_height;
inv_list_offset = 0;
inv_drag_momentum = 0;
inv_friction = 0.9;
inv_offset_origin = inv_list_offset;

// Set up inventory tooltip
inv_tooltip_width = 256;
inv_tooltip_height = 0;
inv_tooltip_x1 = inv_list_x2 + inv_padding;
inv_tooltip_x2 = inv_tooltip_x1 + inv_tooltip_width;
inv_tooltip_y1 = inv_y1;
inv_tooltip_y2 = inv_y1 + inv_tooltip_height;

inv_equip_btn_height = 32;
inv_equip_btn_width = inv_tooltip_width;
inv_equip_btn_x1 = inv_tooltip_x1;
inv_equip_btn_x2 = inv_tooltip_x2;
inv_equip_btn_y1 = 0;
inv_equip_btn_y2 = 0;