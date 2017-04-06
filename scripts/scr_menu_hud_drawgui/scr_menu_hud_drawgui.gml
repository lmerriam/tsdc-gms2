/// HUD drawgui event

// Draw buttons
for (i = 0; i < ds_list_size(buttons); i++) {
    var btn = buttons[| i];
    if (btn[4] != noone) scr_draw_btn_sprite(btn);
}

// Draw combos
// TODO: move logic to step
if (scr_alarm_running(combo_timer) and combo_count > 2) {
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_text(window_hcenter,combo_count_y,"COMBO x" + string(combo_count))
	draw_healthbar(combo_bar_x1,combo_bar_y1,combo_bar_x2,combo_bar_y2,combo_bar_percent,c_black,c_yellow,c_yellow,0,true,false);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}

// Draw nearest drop tooltip
if (nearest_drop_in_range) {
    scr_draw_nearest_comparison(nearest_drop.properties);
}

// Draw shop button
if (nearest_interactable_in_range) {
    scr_draw_btn_sprite(shop_btn);
}
    
// Draw the minimap
draw_surface_stretched(minimap,minimap_window_x,minimap_window_y,minimap_width,minimap_height);
draw_rectangle_color(minimap_window_x, minimap_window_y, minimap_window_x+minimap_width, minimap_window_y+minimap_height, c_black, c_black, c_black, c_black, true);
draw_sprite_ext(spr_player_arrow,0,(minimap_window_x + (minimap_width/2)),(minimap_window_y + (minimap_height/2)),1,1,global.mousedir,c_white,1);
    
// Draw health and stamina
var hp = scr_get_instance_stat(Player,"Health");
var maxhp = scr_get_instance_stat(Player,"Max Health");
var stamina = scr_get_instance_stat(Player,"Stamina");
var maxstamina = scr_get_instance_stat(Player,"Max Stamina");
var hbar = .025*window_height;
var lbar = .25*window_width;
var padding = .01*window_height;
draw_healthbar(menu_btn_x2+padding,windowpadding,menu_btn_x2+padding+lbar,windowpadding+hbar,hp/maxhp*100,c_black,c_red,c_green,0,true,true);
draw_healthbar(menu_btn_x2+padding,windowpadding+hbar+padding,menu_btn_x2+padding+lbar,windowpadding+hbar*2+padding,stamina/maxstamina*100,c_black,c_blue,c_blue,0,true,true);
    
// Draw expr
var hbar = 3;
var expr = Player.base_stats[? "Experience"];
var maxexpr = Player.base_stats[? "Next Level Experience"];
draw_healthbar(0,window_height-hbar,window_width,window_height,expr/maxexpr*100,c_black,c_white,c_white,0,true,true);