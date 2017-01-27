/// Draw the inventory

// Draw nav menu
scr_menu_navigation_drawgui();

// Debug
draw_text(32, 200, string_hash_to_newline(current_item));

// Draw the inventory slots
scr_draw_inventory(global.inventory_slots, slot_width, inventory_coords[0], inventory_coords[1]);

// Draw the equipment slots
scr_draw_inventory(global.equipment_slots, slot_width, equipment_coords[0], equipment_coords[1]);

if (selected_item != noone) {
   scr_draw_inv_tooltip(selected_item,inv_tooltip_x,inv_tooltip_y,inv_tooltip_width);
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);

