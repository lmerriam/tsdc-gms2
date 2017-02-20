/// Init the inventory

// Set up inv slots
shop_slots = ds_grid_create(3,5);
ds_grid_clear(shop_slots,noone);

// Set up the inventory offsets
// Centering that shit
// TODO: why the fuck can I not get global.window_width yet
var shop_offset_left = 32;
var shop_offset_top = (__view_get( e__VW.HPort, 0 ) - slot_width * ds_grid_height(global.inventory_slots)) / 2 + 32;;

// Get the equipment slot coordinates
inv_vendor_coords = scr_init_inventory(shop_slots, slot_width, shop_offset_left, shop_offset_top);

// Get the inventory coordinates
inv_player_coords = scr_init_inventory(global.inventory_slots, slot_width, inv_vendor_coords[2]+16, shop_offset_top);

/// Set up inventory tooltip and equip button
shop_tooltip_width = 230;
shop_tooltip_x = inv_player_coords[2] + 16; 
shop_tooltip_y = shop_offset_top;
shop_tooltip_line_height = 24;
shop_tooltip_padding = 13;
shop_tooltip_line_count = 0;
shop_tooltip_height = 0;
shop_tooltip_compare_item = noone;
shop_tooltip_buy_button = false;

// Buy/sell buttons
buy_btn_x1 = shop_tooltip_x;
buy_btn_x2 = buy_btn_x1 + shop_tooltip_width;
buy_btn_y1 = 0;
buy_btn_y2 = 0;
buy_btn = false;
sell_btn = false;