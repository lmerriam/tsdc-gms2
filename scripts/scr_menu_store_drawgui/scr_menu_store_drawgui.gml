/// Draw the inventory

// Draw nav menu
scr_menu_navigation_drawgui();

// Debug
draw_text(32, 200, string_hash_to_newline(current_item));

// Draw the inventory slots
scr_draw_inventory(global.inventory_slots, slot_width, inv_player_coords[0], inv_player_coords[1]);

// Draw the equipment slots
scr_draw_inventory(global.store_slots, slot_width, inv_vendor_coords[0], inv_vendor_coords[1]);

// Draw the tooltip
if (selected_item != noone) {
	scr_draw_inv_tooltip(selected_item,store_tooltip_x,store_tooltip_y,store_tooltip_width,store_tooltip_height,store_tooltip_padding,store_tooltip_line_height,store_tooltip_compare_item);
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);

