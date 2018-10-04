/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step();

// Get list props
var list_props = inv_list_player;
var inv_list_x1 = list_props[? "x1"];
var inv_list_x2 = list_props[? "x2"];
var inv_list_y1 = list_props[? "y1"];
var inv_list_y2 = list_props[? "y2"];
var inv_list_item_height = list_props[? "item height"];
var inv_list_height = inv_list_y2-inv_list_y1;
var inv_drag_momentum = list_props[? "drag momentum"];
var inv_list_offset = list_props[? "offset"];
var inv_list_offset_origin = list_props[? "offset origin"];
var inv_list_friction = list_props[? "friction"];
var inv_drag_on_list = list_props[? "drag on list"];

// Check inventory clicks
if gui_mouse_pressed {
	list_props[? "offset origin"] = inv_list_offset;
	if scr_mouse_over_ui(inv_list_x1,inv_list_y1,inv_list_x2,inv_list_y2) {
		list_props[? "drag on list"] = true;
	}
}

// Mouse released 
if gui_mouse_released_drag {
	if (inv_drag_on_list) list_props[? "drag momentum"] = gui_mouse_delta_y;
	list_props[? "drag on list"] = false;
} else if gui_mouse_released_click {
	list_props[? "drag on list"] = false;
	
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
	if (inv_drag_on_list) list_props[? "offset"] = inv_list_offset_origin + (gui_mouse_y - gui_mouse_origin_y);
} else {
	
	// Get max and min offset
	var current_list_height = ds_list_size(global.inventory[? inventory_current])*inv_list_item_height;
	var inventory_max_offset = inv_list_height-current_list_height;
	if inventory_max_offset > 0 inventory_max_offset = 0;
	
	// Inertial movement
	if (abs(inv_drag_momentum) > 0.1) {
		list_props[? "drag momentum"] *= inv_list_friction;
		list_props[? "offset"] += inv_drag_momentum;
	}
	
	// Springback if scroll goes beyond scrolling window
	if (inv_list_offset > 0) {
		list_props[? "offset"] *= .8;
	} else if (inv_list_offset < inventory_max_offset) {
		list_props[? "offset"] += .2 * (inventory_max_offset-inv_list_offset);
	}
}