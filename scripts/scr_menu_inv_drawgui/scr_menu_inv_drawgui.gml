/// Draw the inventory

// Draw nav menu
scr_menu_navigation_drawgui();

// Debug
draw_text(32, 232, Player.properties[? "Gold"]);

// Draw the tabs
for (var i=0; i<array_length_1d(inventory_index); i++) {
	var inv_name = inventory_index[i];
	var inv_props = inventory_props[? inv_name];
	
	var sprite = inv_props[? "tab sprite"];
	var x1 = inv_props[? "tab x1"];
	var x2 = inv_props[? "tab x2"];
	var y1 = inv_props[? "tab y1"];
	var y2 = inv_props[? "tab y2"];
	var spr_size = sprite_get_width(sprite)*2;
	var spr_offset = (inventory_tab_size-spr_size)/2;
	var spr_x = x1+spr_offset;
	var spr_y = y1+spr_offset;
	
	scr_draw_9patch(spr_ui_box_2x,0,x1,y1,x2,y2,6,6,6,6);
	draw_sprite_stretched(sprite,0,spr_x,spr_y,spr_size,spr_size);
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);
