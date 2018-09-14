/// Detect the Inventory slot the mouse is over and store it
//TODO: this shares sooo much code with inventory, refactor

// Check navigation submenu
scr_menu_navigation_step()

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);


// TODO: figure out why the fuck div seems to be rounding up so I can remove these -3s
if (scr_mouse_over_ui(inv_player_coords[0],inv_player_coords[1],inv_player_coords[2],inv_player_coords[3])) {
    current_inventory = global.inventory_slots;
    current_slot_x = (mousex - inv_player_coords[0]-3) div slot_width;
    current_slot_y = (mousey - inv_player_coords[1]-3) div slot_width;
    current_item = global.inventory_slots[# current_slot_x,current_slot_y];    
} else if (scr_mouse_over_ui(inv_vendor_coords[0],inv_vendor_coords[1],inv_vendor_coords[2],inv_vendor_coords[3])) {
    current_inventory = shop_slots;
    current_slot_x = (mousex - inv_vendor_coords[0]-3) div slot_width;
    current_slot_y = (mousey - inv_vendor_coords[1]-3) div slot_width;
    current_item = shop_slots[# current_slot_x,current_slot_y];
} else {
    current_inventory = noone;
    current_slot_x = 0;
    current_slot_y = 0;
    current_item = noone;
}

// Check inventory clicks

if mouse_check_button_released(1) {
	// Buy or sell
	if (scr_mouse_over_ui(buy_btn_x1,buy_btn_y1,buy_btn_x2,buy_btn_y2)) {
		if (buy_btn) {
			Player.properties[? "Gold"] -= selected_item[? "Value"];
			shop_slots[# selected_item_x, selected_item_y] = noone;
			scr_send_to_inv(selected_item);
		} else if (sell_btn) {
			Player.properties[? "Gold"] += selected_item[? "Value"];
			global.inventory_slots[# selected_item_x, selected_item_y] = noone;
		}
	}
	
	// Update currently selected item
	selected_item = current_item;
	selected_item_x = current_slot_x;
	selected_item_y = current_slot_y;
	selected_item_origin = current_inventory;
	
	// Update inv tooltip dimensions for currently selected item
	if (selected_item != noone) {
		shop_tooltip_line_count = ds_map_size(selected_item[? "Stats"]) + ds_map_size(selected_item[? "Buffs"]) + 2;
	    shop_tooltip_height = shop_tooltip_line_count*shop_tooltip_line_height+shop_tooltip_padding*2;
		shop_tooltip_compare_item = scr_get_equipped(selected_item[? "Type"]);
		
		buy_btn = false;
		sell_btn = false;
		if (selected_item_origin == shop_slots) {
			buy_btn = true;
		} else if (selected_item_origin == global.inventory_slots) {
			sell_btn = true;
		}
	}
	
	// Update buy/sell btn dimensions
	buy_btn_y1 = shop_tooltip_y + shop_tooltip_height + 16;
	buy_btn_y2 = buy_btn_y1 + 48;
}
