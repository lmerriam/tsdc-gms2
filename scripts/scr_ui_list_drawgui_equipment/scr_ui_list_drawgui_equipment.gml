/// @param props
var props = argument0;

var list = props[? "list"];
var list_x1 = props[? "x1"];
var list_x2 = props[? "x2"];
var list_y1 = props[? "y1"];
var list_y2 = props[? "y2"];
var item_height = props[? "item height"];
var offset = props[? "offset"];
var drag_momentum = props[? "drag momentum"];
var fric = props[? "friction"];
var offset_origin = props[? "offset origin"];
var drag_on_list = props[? "drag on list"];
var item_selected = props[? "selected item"];

// Draw the currently selected inventory
var inv = list;
for (var i=0; i<ds_list_size(inv); i++) {
	
	// Draw the item box
	var x1 = list_x1;
	var x2 = list_x2;
	var y1 = list_y1 + offset + item_height*i;
	var y2 = y1 + item_height;
	var item = inv[| i];
	var box;
	if (item == item_selected) box = spr_ui_box_selected_2x else box = spr_ui_box_2x;
	scr_draw_9patch(box,0,x1,y1,x2,y2,6,6,6,6);
	if (item == item_selected) draw_sprite(spr_ui_selection_carat_2x,0,x2-1,y1+item_height/2);
	
	// Draw the item sprite
	var sprite = item[? "Sprite"];
	var spr_size = sprite_get_width(sprite);
	var name = item[? "Name"];
	var quantity = item[? "Quantity"];
	var rarity = item[? "Rarity"];
	var rarity_color = item[? "Rarity color"];
	var spr_offset = (item_height-spr_size)/2;
	var xx = x1+32;
	var yy = y1+item_height/2;
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