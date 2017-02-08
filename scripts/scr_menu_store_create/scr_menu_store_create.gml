/// Init the inventory

// Set up inv slots
global.store_slots = ds_grid_create(3,5);
ds_grid_clear(global.store_slots,noone);

// Set up the inventory offsets
// Centering that shit
// TODO: why the fuck can I not get global.window_width yet
var store_offset_left = 32;
var store_offset_top = (__view_get( e__VW.HPort, 0 ) - slot_width * ds_grid_height(global.inventory_slots)) / 2 + 32;;

// Get the equipment slot coordinates
inv_vendor_coords = scr_init_inventory(global.store_slots, slot_width, store_offset_left, store_offset_top);

// Get the inventory coordinates
inv_player_coords = scr_init_inventory(global.inventory_slots, slot_width, inv_vendor_coords[2]+16, store_offset_top);

/// Set up inventory tooltip and equip button
store_tooltip_width = 230;
store_tooltip_x = inv_player_coords[2] + 16; 
store_tooltip_y = store_offset_top;
store_tooltip_line_height = 24;
store_tooltip_padding = 13;
store_tooltip_line_count = 0;
store_tooltip_height = 0;
store_tooltip_compare_item = noone;
store_tooltip_buy_button = false;