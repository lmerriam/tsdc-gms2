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

// Set up inv slots
global.inventory_slots = ds_grid_create(5,5);
ds_grid_clear(global.inventory_slots,noone);

// Init the drag item
global.drag_item = noone;
selected_item = noone;
current_inventory = noone;
current_item = noone;
current_slot_x = 0;
current_slot_y = 0;
eqp_btn = false;

// Setup some layout stuff
slot_width = 80;
inv_margin = 20;

// Set up the inventory offsets
// Centering that shit
// TODO: why the fuck can I not get global.window_width yet
var inventory_offset_left = (__view_get( e__VW.WPort, 0 ) - slot_width * ds_grid_width(global.inventory_slots)) / 2;
var inventory_offset_top = (__view_get( e__VW.HPort, 0 ) - slot_width * ds_grid_height(global.inventory_slots)) / 2 + 32;

// Get the inventory coordinates
inventory_coords = scr_init_inventory(global.inventory_slots, slot_width, inventory_offset_left, inventory_offset_top);

// Set up the equipment slots
global.equipment_slots = ds_grid_create(1,4);
ds_grid_clear(global.equipment_slots,noone);

scr_equip_instance(scr_spawn_equipment(0,0,"Spear"));
scr_equip_instance(scr_spawn_equipment(0,0,"Heavy Armor"));
scr_equip_instance(scr_spawn_equipment(0,0,"Gem"));
scr_equip_instance(scr_spawn_equipment(0,0,"Projectile"));

scr_calc_stats();
// Set up the equipment slot offsets
var equipment_offset_left = inventory_coords[0] - slot_width - inv_margin;
var equipment_offset_top = inventory_coords[1];

// Get the equipment slot coordinates
equipment_coords = scr_init_inventory(global.equipment_slots, slot_width, equipment_offset_left, equipment_offset_top);

/// Set up inventory tooltip and equip button
inv_tooltip_width = 230;
inv_tooltip_x = inventory_coords[2] + 16; 
inv_tooltip_y = inventory_coords[1];
inv_tooltip_line_height = 24;
inv_tooltip_padding = 13;
inv_tooltip_line_count = 0;
inv_tooltip_height = 0;
inv_tooltip_compare_item = noone;

eqp_btn_x1 = inv_tooltip_x;
eqp_btn_x2 = eqp_btn_x1 + inv_tooltip_width;
eqp_btn_y1 = 0;
eqp_btn_y2 = eqp_btn_y1 + 48;