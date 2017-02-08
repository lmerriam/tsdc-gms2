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
   scr_draw_inv_tooltip(selected_item,inv_tooltip_x,inv_tooltip_y,inv_tooltip_width,inv_tooltip_height,inv_tooltip_padding,inv_tooltip_line_height,inv_tooltip_compare_item);
	// Draw equip button
	if (eqp_btn) {
		draw_set_color(c_black);
		draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2+4,false);
		draw_set_color(c_yellow);
		draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2,false);
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,"EQUIP");
	}
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);

