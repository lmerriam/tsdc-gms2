/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step();

// Check inventory clicks
if gui_mouse_pressed {
	inv_list_offset_origin = inv_list_offset;
}

// Mouse released 
if gui_mouse_released_drag {
	inv_drag_momentum = gui_mouse_delta_y;
} else if gui_mouse_released_click {
	
	if scr_mouse_over_ui(inv_tab_x1,inv_tab_y1,inv_tab_x2,inv_tab_y2) {
		var height = gui_mouse_y - inv_tab_y1;
		var i = floor(height/inv_tab_size);
		var inv = inventory_index[i];
		//var inv = global.inventory[? inv];
		inventory_current = inv;
	} else if scr_mouse_over_ui(inv_list_x1,inv_list_y1,inv_list_x2,inv_list_y2) {
		var height = gui_mouse_y - inv_list_y1 - inv_list_offset;
		var i = floor(height/inv_list_item_height);
		var inv = global.inventory[? inventory_current];
		var item = inv[| i]
		inv_item_selected = item;
	}
	
}

// Mouse down
if (gui_mouse_down) {
	inv_list_offset = inv_list_offset_origin + (gui_mouse_y - gui_mouse_origin_y);
} else {
	
	// Get max and min offset
	var current_list_height = ds_list_size(global.inventory[? inventory_current])*inv_list_item_height;
	var inventory_max_offset = inv_list_height-current_list_height;
	if inventory_max_offset > 0 inventory_max_offset = 0;
	
	// Inertial movement
	if (abs(inv_drag_momentum) > 0.1) {
		inv_drag_momentum *= inv_friction;
		inv_list_offset += inv_drag_momentum;
	}
	
	// Springback if scroll goes beyond scrolling window
	if (inv_list_offset > 0) {
		inv_list_offset *= .8;
	} else if (inv_list_offset < inventory_max_offset) {
		inv_list_offset += .2 * (inventory_max_offset-inv_list_offset);
	}
}