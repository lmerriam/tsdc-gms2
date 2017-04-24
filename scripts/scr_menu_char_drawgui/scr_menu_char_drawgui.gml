// Character menu drawgui event

// Draw the nav menu
scr_menu_navigation_drawgui();

var stat_points = ds_map_find_value(Player.properties[? "Base Stats"],"Stat points");

// Draw each stat and it's increment button
draw_set_font(PixelSmall_24);
for (var i = 0; i<array_length_1d(stat_list); i++) {
	var stat = stat_list[i];
	var inc = Player.stat_increments[? stat];
	var xx = stat_list_x;
	var yy = stat_list_y + stat_list_line_height*i;
	var text = stat + " " + string(scr_player_stat(stat));
	draw_text(xx, yy, text);
	if (inc > 0 and stat_points > 0) draw_rectangle(xx-64,yy,xx-32, yy+32,true);
}
draw_set_font(BASE_FONT);

draw_sprite_stretched(spr_player_idle,0,128,128,256,256);

if stat_points != 0 {
	draw_text(stat_points_x, stat_points_y, "Points available: " + string(stat_points));
}