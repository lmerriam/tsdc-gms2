/// Detect the Inventory slot the mouse is over and store it

// Get list props
var list_props = argument0;
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
var inv_item_selected = list_props[? "selected item"];

// List events
list_props[? "event item selected"] = false;

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
		
	// Select inventory list items
	if scr_mouse_over_ui(inv_list_x1,inv_list_y1,inv_list_x2,inv_list_y2) {
		var height = gui_mouse_y - inv_list_y1 - inv_list_offset;
		var i = floor(height/inv_list_item_height);
		var list = list_props[? "list"];
		var item = list[| i];
		list_props[? "selected item"] = item;
		list_props[? "event item selected"] = true;
	}
	
}

// Mouse down
if (gui_mouse_down) {
	if (inv_drag_on_list) list_props[? "offset"] = inv_list_offset_origin + (gui_mouse_y - gui_mouse_origin_y);
} else {
	
	// Get max and min offset
	var current_list_height = ds_list_size(list_props[? "list"])*inv_list_item_height;
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