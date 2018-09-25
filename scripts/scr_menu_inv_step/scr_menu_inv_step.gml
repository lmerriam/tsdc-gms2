/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step();

// Check inventory clicks
if gui_mouse_pressed {
	inv_list_offset_origin = inv_list_offset;
	if scr_mouse_over_ui(inv_list_x1,inv_list_y1,inv_list_x2,inv_list_y2) {
		inv_drag_on_list = true;
	}
}

// Mouse released 
if gui_mouse_released_drag {
	if (inv_drag_on_list) inv_drag_momentum = gui_mouse_delta_y;
	inv_drag_on_list = false;
} else if gui_mouse_released_click {
	inv_drag_on_list = false;
	
	// Inventory tab switching
	if scr_mouse_over_ui(inv_tab_x1,inv_tab_y1,inv_tab_x2,inv_tab_y2) {
		var height = gui_mouse_y - inv_tab_y1;
		var i = floor(height/inv_tab_size);
		var inv_props = inventory_props[| i];
		var type = inv_props[? "type"];
		//var inv = global.inventory[? inv];
		inventory_current = type;
		inv_item_selected = noone;
		
	// Select inventory list items
	} else if scr_mouse_over_ui(inv_list_x1,inv_list_y1,inv_list_x2,inv_list_y2) {
		var height = gui_mouse_y - inv_list_y1 - inv_list_offset;
		var i = floor(height/inv_list_item_height);
		var inv = global.inventory[? inventory_current];
		var item = inv[| i]
		inv_item_selected = item;
		inv_current_equippable = global.equipment_slots[? inventory_current] ? true : false;
		
	// Equip button
	} else if inv_item_selected and inv_current_equippable and scr_mouse_over_ui(inv_equip_btn_x1,inv_equip_btn_y1,inv_equip_btn_x2,inv_equip_btn_y2) {
		if scr_equip(inv_item_selected) {
			var inv = global.inventory[? inventory_current];
			var pos = ds_list_find_index(inv,inv_item_selected);
			ds_list_delete(inv,pos);
		}
		inv_item_selected = noone;
	}
	
}

// Mouse down
if (gui_mouse_down) {
	if (inv_drag_on_list) inv_list_offset = inv_list_offset_origin + (gui_mouse_y - gui_mouse_origin_y);
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