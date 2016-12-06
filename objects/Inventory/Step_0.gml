/// Detect the Inventory slot the mouse is over and store it
var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

// TODO: figure out why the fuck div seems to be rounding up so I can remove these -3s
if (scr_mouse_over_inv()) {
    current_inventory = global.inventory_slots;
    current_slot_x = (mousex - inventory_coords[0]-3) div slot_width;
    current_slot_y = (mousey - inventory_coords[1]-3) div slot_width;
    if(current_slot_x == 6) show_message(string(mousex - inventory_coords[0]) + " " + string(slot_width));
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

if (selected_item != noone) {
    inv_tooltip_height = array_height_2d(selected_item.text)*inv_tooltip_line_height+inv_tooltip_padding*2;
    if (eqp_btn) {
        eqp_btn_y1 = inv_tooltip_y + inv_tooltip_height + 16;
        eqp_btn_y2 = eqp_btn_y1 + 48;
    }
}

