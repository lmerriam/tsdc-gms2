/// Draw the inventory
scr_draw_overlay();

// Debug
//draw_text(32, 232, Player.properties[? "Gold"]);
draw_set_color(c_white);
draw_set_font(PixelSmall_12);

// Draw the inventory tabs
for (var i=0; i<ds_list_size(inventory_props); i++) {
	var props = inventory_props[| i];
	var inv_type = props[? "type"];
	
	var sprite = props[? "tab sprite"];
	var x1 = props[? "tab x1"];
	var x2 = props[? "tab x2"];
	var y1 = props[? "tab y1"];
	var y2 = props[? "tab y2"];
	var spr_size = sprite_get_width(sprite)*2;
	var spr_offset = (inv_tab_size-spr_size)/2;
	var spr_x = x1+spr_offset;
	var spr_y = y1+spr_offset;
	
	if (inv_type == inventory_current) {
		scr_draw_9patch(spr_ui_box_selected_2x,0,x1,y1,x2,y2,6,6,6,6);
		draw_sprite(spr_ui_selection_carat_2x,0,x2-1,y1+inv_tab_size/2);
	} else {
		scr_draw_9patch(spr_ui_box_2x,0,x1,y1,x2,y2,6,6,6,6);
	}
	draw_sprite_stretched(sprite,0,spr_x,spr_y,spr_size,spr_size);
}

// Get the ui list variables
var list_props = inv_list_player;
var inv_list_x1 = list_props[? "x1"];
var inv_list_x2 = list_props[? "x2"];
var inv_list_y1 = list_props[? "y1"];
var inv_list_y2 = list_props[? "y2"];
var inv_list_item_height = list_props[? "item height"];
var inv_list_offset = list_props[? "offset"];
var inv_list_drag_momentum = list_props[? "drag momentum"];
var inv_list_friction = list_props[? "friction"];
var inv_list_offset_origin = list_props[? "offset origin"];
var inv_list_drag_on_list = list_props[? "drag on list"];

// Draw the currently selected inventory
var inv = global.inventory[? inventory_current];
for (var i=0; i<ds_list_size(inv); i++) {
	
	
	// Draw the item box
	var x1 = inv_list_x1;
	var x2 = inv_list_x2;
	var y1 = inv_list_y1 + inv_list_offset + inv_list_item_height*i;
	var y2 = y1 + inv_list_item_height;
	var item = inv[| i];
	var box;
	if (item == inv_item_selected) box = spr_ui_box_selected_2x else box = spr_ui_box_2x;
	scr_draw_9patch(box,0,x1,y1,x2,y2,6,6,6,6);
	if (item == inv_item_selected) draw_sprite(spr_ui_selection_carat_2x,0,x2-1,y1+inv_list_item_height/2);
	
	// Draw the item sprite
	var sprite = item[? "Sprite"];
	var name = item[? "Name"];
	var quantity = item[? "Quantity"];
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
	if (quantity) name = name + " x " + string(quantity);
	draw_text(xx,yy,name);
	
	// Draw the item level
	var xx = x2 - 16;
	draw_set_halign(fa_right);
	draw_text(xx,yy,rarity);
	draw_set_halign(fa_left);
}

// Draw the tooltip
if (inv_item_selected) {
	var item = inv_item_selected;
	var stats = item[? "Stats"];
	var buffs = item[? "Buffs"];
	var stats_size = stats == undefined ? 0 : ds_map_size(stats);
	var buffs_size = buffs == undefined ? 0 : ds_map_size(buffs);
	var height = (stats_size+buffs_size+2+1)*(inv_tooltip_line_height);
	var name = item[? "Name"];
	var rarity = item[? "Rarity"];
	var rarity_color = item[? "Rarity color"];
	
	// Draw the tooltip box
	var x1 = inv_tooltip_x1;
	var y1 = inv_tooltip_y1;
	var x2 = inv_tooltip_x2;
	var y2 = inv_tooltip_y1 + height;
	inv_tooltip_y2 = y2;
	inv_tooltip_height = height;
	scr_draw_9patch(spr_ui_box_2x,0,x1,y1,x2,y2,6,6,6,6);
	
	// Draw the tooltip text
	var line_height = inv_tooltip_line_height;
	x1 += 16;
	y1 += line_height;
	
	// Item name
	draw_set_color(rarity_color);
	draw_text(x1,y1,name);
	
	// Item rarity
	y1 += line_height;
	draw_text(x1,y1,rarity);
	draw_set_color(c_white);
	
	// Stats
	var line_count = 0;
	if (stats_size) {
		var stat_list = inv_tooltip_stats;
		var size = array_length_1d(stat_list);
		for (var i=0;i<size;i++) {
			var stat = stat_list[i];
			var value = stats[? stat];
			if (value != undefined) {
				y1 += line_height;
				// Draw stat name
				draw_text(x1,y1,stat);
				// Draw stat value
				draw_set_halign(fa_right);
				draw_text(x2-16,y1,value);
				draw_set_halign(fa_left);
				line_count++;
			}
		}
	}
	
	// Buffs
	var size = buffs_size;
	if size var buff = ds_map_find_first(buffs)
	for (var i=0;i<size;i++) {
		y1 += line_height;
		var value = buffs[? buff];
		// Draw buff name
		draw_text(x1,y1,buff);
		// Draw stat value
		draw_set_halign(fa_right);
		draw_text(x2-16,y1,value);
		draw_set_halign(fa_left);
		line_count++;
	}
	
	if (inv_current_equippable) {
		// Equip button
		x1 = inv_equip_btn_x1;
		x2 = inv_equip_btn_x2;
		y1 = inv_tooltip_y2 + 8;
		y2 = y1 + inv_equip_btn_height;
		// Update the equip btn size variables
		inv_equip_btn_y1 = y1;
		inv_equip_btn_y2 = y2;
		// Draw button rectangle
		scr_draw_9patch(spr_button_yellow_x2,0,x1,y1,x2,y2,4,4,4,4);
		draw_set_color(c_black);
		// Draw button text
		var y_center = y1 + (inv_equip_btn_height/2);
		var x_center = x1 + (inv_equip_btn_width/2);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(x_center,y_center,"EQUIP");
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
	
	// Drop button
}

// Draw the player
var sprite = spr_player_idle;
var scale = 4;
var xx = inv_tooltip_x2 + inv_pane_margin + scale*sprite_get_xoffset(sprite);
var yy = inv_tooltip_y1 + scale*sprite_get_yoffset(sprite);
draw_sprite_ext(spr_player_idle,-1,xx,yy,4,4,0,c_white,1);

// Reset the color and alpha
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_valign(fa_top);

// Draw nav menu
scr_menu_navigation_drawgui();
