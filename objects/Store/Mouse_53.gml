/// Check inventory clicks

// Check for equip btn
if (eqp_btn and scr_mouse_over_ui(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2)) {
    global.inventory_slots[# selected_item_x,selected_item_y] = noone;
    scr_equip(selected_item);

// Check for close button
} else if (scr_mouse_over_ui(close_btn_x1,close_btn_y1,close_btn_x2,close_btn_y2)) {
    with (View) event_perform(ev_keypress,ord("I"));
}


selected_item = current_item;
selected_item_x = current_slot_x;
selected_item_y = current_slot_y;

// Show/hide eqp btn
if (current_inventory == global.inventory_slots and current_item != noone) {
    eqp_btn = true

// Turn off eqp button
} else {
    eqp_btn = false;
}

