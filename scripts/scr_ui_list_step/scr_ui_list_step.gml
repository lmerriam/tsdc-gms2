/// Detect the list slot the mouse is over and store it

// Get list props
var list_props = argument0;
var x1 = list_props[? "x1"];
var x2 = list_props[? "x2"];
var y1 = list_props[? "y1"];
var y2 = list_props[? "y2"];
var item_height = list_props[? "item height"];
var height = y2-y1;
var drag_momentum = list_props[? "drag momentum"];
var offset = list_props[? "offset"];
var offset_origin = list_props[? "offset origin"];
var scroll_friction = list_props[? "friction"];
var drag_on_list = list_props[? "drag on list"];
var item_selected = list_props[? "selected item"];

// List events
list_props[? "event item selected"] = false;

// Check list clicks
if gui_mouse_pressed {
	list_props[? "offset origin"] = offset;
	if scr_mouse_over_ui(x1,y1,x2,y2) {
		list_props[? "drag on list"] = true;
	}
}

// Mouse released 
if gui_mouse_released_drag {
	if (drag_on_list) list_props[? "drag momentum"] = gui_mouse_delta_y;
	list_props[? "drag on list"] = false;
} else if gui_mouse_released_click {
	list_props[? "drag on list"] = false;
		
	// Select list items
	if scr_mouse_over_ui(x1,y1,x2,y2) {
		var height = gui_mouse_y - y1 - offset;
		var i = floor(height/item_height);
		var list = list_props[? "list"];
		var item = list[| i];
		list_props[? "selected item"] = item;
		list_props[? "event item selected"] = true;
	}
	
}

// Mouse down
if (gui_mouse_down) {
	if (drag_on_list) list_props[? "offset"] = offset_origin + (gui_mouse_y - gui_mouse_origin_y);
} else {
	
	// Get max and min offset
	var current_list_height = ds_list_size(list_props[? "list"])*item_height;
	var max_offset = height-current_list_height;
	if max_offset > 0 max_offset = 0;
	
	// Inertial movement
	if (abs(drag_momentum) > 0.1) {
		list_props[? "drag momentum"] *= scroll_friction;
		list_props[? "offset"] += drag_momentum;
	}
	
	// Springback if scroll goes beyond scrolling window
	if (offset > 0) {
		list_props[? "offset"] *= .8;
	} else if (offset < max_offset) {
		list_props[? "offset"] += .2 * (max_offset-offset);
	}
}