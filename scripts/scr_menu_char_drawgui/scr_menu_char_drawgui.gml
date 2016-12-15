// Character menu drawgui event

// Draw the nav menu
scr_menu_navigation_drawgui();

// Draw each stat
draw_set_font(pixeltype_24);
for (var i = 0; i<array_length_1d(stat_list); i++) {
	var stat = stat_list[i];
	var xx = stat_list_x;
	var yy = stat_list_y + stat_list_line_height*i;
	var text = stat + " " + string(Player.stats[? stat]);
	draw_text(xx, yy, text);
}
draw_set_font(BASE_FONT);

draw_sprite_stretched(spr_player_idle,0,128,128,256,256);