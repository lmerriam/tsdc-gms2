/// Draw the inventory
scr_draw_overlay();

// Debug
//draw_text(32, 232, Player.properties[? "Gold"]);
draw_set_color(c_white);
draw_set_font(PixelSmall_12);

// Draw the inventory tabs
for (var i=0; i<array_length_1d(inventory_index); i++) {
	var inv_name = inventory_index[i];
	var inv_props = inventory_props[? inv_name];
	
	var sprite = inv_props[? "tab sprite"];
	var x1 = inv_props[? "tab x1"];
	var x2 = inv_props[? "tab x2"];
	var y1 = inv_props[? "tab y1"];
	var y2 = inv_props[? "tab y2"];
	var spr_size = sprite_get_width(sprite)*2;
	var spr_offset = (inv_tab_size-spr_size)/2;
	var spr_x = x1+spr_offset;
	var spr_y = y1+spr_offset;
	
	if (inv_name == inventory_current) {
		scr_draw_9patch(spr_ui_box_selected_2x,0,x1,y1,x2,y2,6,6,6,6);
		draw_sprite(spr_ui_selection_carat_2x,0,x2-1,y1+inv_tab_size/2);
	} else {
		scr_draw_9patch(spr_ui_box_2x,0,x1,y1,x2,y2,6,6,6,6);
	}
	draw_sprite_stretched(sprite,0,spr_x,spr_y,spr_size,spr_size);
}

// Draw the currently selected inventory
var inv = global.inventory[? inventory_current];
for (var i=0; i<ds_list_size(inv); i++) {
	
	// Draw the item box
	var item = inv[| i];
	var x1 = inv_list_x1;
	var x2 = inv_list_x2;
	var y1 = inv_list_offset + inv_list_y1 + inv_list_item_height*i;
	var y2 = y1 + inv_list_item_height;
	var box;
	if item == inv_item_selected box = spr_ui_box_selected_2x else box = spr_ui_box_2x;
	scr_draw_9patch(box,0,x1,y1,x2,y2,6,6,6,6);
	
	// Draw the item sprite
	var sprite = item[? "Sprite"];
	var name = item[? "Name"];
	var rarity = item[? "Rarity"];
	var rarity_color = item[? "Rarity color"];
	var spr_offset = (inv_list_item_height-spr_size)/2;
	var xx = x1+32;
	var yy = y1+inv_list_item_height/2;
	//draw_sprite_ext(spr_inv_slot_highlight,0,xx,yy,1,1,0,rarity_color,1);
	draw_sprite_ext(sprite,1,xx,yy,2,2,22,c_white,1);
	
	// Draw the item name
	var xx = xx+24;
	draw_set_valign(fa_middle);
	draw_text(xx,yy,name);
	
	// Draw the item level
	var xx = x2 - 16;
	draw_set_halign(fa_right);
	draw_text(xx,yy,rarity);
	draw_set_halign(fa_left);
}

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_valign(fa_top);

// Draw nav menu
scr_menu_navigation_drawgui();
