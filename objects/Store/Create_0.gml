/// Init the inventory
event_inherited();

// Init the drag item
selected_item = noone;
current_inventory = noone;
current_item = noone;
current_slot_x = 0;
current_slot_y = 0;
eqp_btn = false;

// Setup some layout stuff
slot_width = 64 ;
equipment_left_padding = 20;

// Set up the inventory offsets
// Centering that shit
// TODO: why the fuck can I not get global.window_width yet
var inventory_offset_left = (__view_get( e__VW.WPort, 0 ) - slot_width * ds_grid_width(global.inventory_slots)) / 2;
var inventory_offset_top = (__view_get( e__VW.HPort, 0 ) - slot_width * ds_grid_height(global.inventory_slots)) / 2;

// Get the inventory coordinates
inventory_coords = scr_init_inventory(global.inventory_slots, slot_width, inventory_offset_left, inventory_offset_top);

// Set up the equipment slot offsets
var equipment_offset_left = inventory_coords[2] + equipment_left_padding;
var equipment_offset_top = inventory_coords[1];

// Get the equipment slot coordinates
equipment_coords = scr_init_inventory(global.equipment_slots, slot_width, equipment_offset_left, equipment_offset_top);

// Set up store slots
store_slots = ds_grid_create(2,6);
ds_grid_clear(store_slots,noone);

store_coords = scr_init_inventory(store_slots, slot_width, 32, 32);

/// Set up the inventory close btn
close_btn_x1 = 16;
close_btn_y1 = 16;
close_btn_x2 = 128;
close_btn_y2 = 128;

/// Set up inventory tooltip and equip button
inv_tooltip_width = 200;
inv_tooltip_x = inventory_coords[0] - 16 - inv_tooltip_width;
inv_tooltip_y = inventory_coords[1];
inv_tooltip_line_height = 20;
inv_tooltip_padding = 3;
inv_tooltip_height = 0;

eqp_btn_x1 = inv_tooltip_x;
eqp_btn_x2 = eqp_btn_x1 + inv_tooltip_width;
eqp_btn_y1 = 0;
eqp_btn_y2 = eqp_btn_y1 + 32;


