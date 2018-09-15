/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step();

// Check inventory clicks
if mouse_check_button_pressed(mb_left) {
	inv_list_offset_origin = inv_list_offset;
}

// Mouse released 
if mouse_check_button_released(mb_left) {
	if gui_mouse_dragged inv_drag_momentum = gui_mouse_delta_y;
}

if (mouse_check_button(mb_left)) {
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