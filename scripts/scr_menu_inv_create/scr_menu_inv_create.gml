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

// Set up 
inventory_padding = 32;
inventory_tab_size = 64;

// Init inventory properties
inventory_props = ds_map_create();
for (var i=0; i<array_length_1d(inventory_index); i++) {
	var inv_name = inventory_index[i];
	var inv_props = ds_map_create();
	inventory_props[? inv_name] = inv_props;
	
	// Set up the tab buttons for the different inventories
	var x1 = inventory_padding;
	var x2 = x1 + inventory_tab_size;
	var y1 = TAB_BAR_HEIGHT + inventory_padding + inventory_tab_size*i;
	var y2 = y1 + inventory_tab_size;	
	inv_props[? "tab x1"] = x1;
	inv_props[? "tab x2"] = x2;
	inv_props[? "tab y1"] = y1;
	inv_props[? "tab y2"] = y2;
	inv_props[? "tab sprite"] = asset_get_index("spr_inventory_tab_" + string_lower(inv_name));
}

equipment_props = ds_map_create();
