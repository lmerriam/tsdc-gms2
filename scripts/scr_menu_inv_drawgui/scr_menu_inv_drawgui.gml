/// Draw the inventory

// Draw nav menu
scr_menu_navigation_drawgui();

draw_text(32, 200, string_hash_to_newline(current_item));

// Set cell color
draw_set_color(c_black);
draw_set_alpha(.5);

// Draw the inventory slots
scr_draw_inventory(global.inventory_slots, slot_width, inventory_coords[0], inventory_coords[1]);

// Draw the equipment slots
scr_draw_inventory(global.equipment_slots, slot_width, equipment_coords[0], equipment_coords[1]);

if (selected_item != noone) {
   scr_draw_inv_tooltip_1(selected_item,32,64,200);
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);
