/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step()

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);


// TODO: figure out why the fuck div seems to be rounding up so I can remove these -3s
if (scr_mouse_over_inv()) {
    current_inventory = global.inventory_slots;
    current_slot_x = (mousex - inventory_coords[0]-3) div slot_width;
    current_slot_y = (mousey - inventory_coords[1]-3) div slot_width;
    current_item = global.inventory_slots[# current_slot_x,current_slot_y];    
} else if (scr_mouse_over_ui(equipment_coords[0],equipment_coords[1],equipment_coords[2],equipment_coords[3])) {
    current_inventory = global.equipment_slots;
    current_slot_x = (mousex - equipment_coords[0]-3) div slot_width;
    current_slot_y = (mousey - equipment_coords[1]-3) div slot_width;
    current_item = global.equipment_slots[# current_slot_x,current_slot_y];
} else {
    current_inventory = noone;
    current_slot_x = 0;
    current_slot_y = 0;
    current_item = noone;
}

/// Check inventory clicks

if mouse_check_button_released(1) {

	// Check for equip btn
	if (eqp_btn and scr_mouse_over_ui(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2)) {
	    global.inventory_slots[# selected_item_x,selected_item_y] = noone;
	    scr_equip(selected_item);
	}
	
	// Update currently selected item
	selected_item = current_item;
	selected_item_x = current_slot_x;
	selected_item_y = current_slot_y;
	
	// Update inv tooltip dimensions for currently selected item
	if (selected_item != noone) {
	
		// Calculate line count
		var selected_item_buffs = selected_item[? "Buffs"];
		var buff_properties_length = 0;
		var key = ds_map_find_first(selected_item_buffs);
		var num_buffs = ds_map_size(selected_item[? "Buffs"])
		for (var i=0; i<num_buffs; i++) {
			buff_properties_length += ds_map_size(selected_item_buffs[? key]);
			key = ds_map_find_next(selected_item_buffs,key);
		}
		inv_tooltip_line_count = ds_map_size(selected_item[? "Stats"]) + ds_map_size(selected_item[? "Buffs"]) + buff_properties_length + 2;
	    inv_tooltip_height = inv_tooltip_line_count*inv_tooltip_line_height+inv_tooltip_padding*2;
		inv_tooltip_compare_item = scr_get_equipped(selected_item[? "Type"]);
	    eqp_btn_y1 = inv_tooltip_y + inv_tooltip_height + 16;
	    eqp_btn_y2 = eqp_btn_y1 + 48;
	}
	
	// Show/hide eqp btn
	if (current_inventory == global.inventory_slots and current_item != noone) {
	    eqp_btn = true

	// Turn off eqp button
	} else {
	    eqp_btn = false;
	}
}
