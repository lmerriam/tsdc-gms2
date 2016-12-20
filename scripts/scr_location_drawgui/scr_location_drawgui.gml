// 
var screen_origin_x = GUI.minimap_window_x;
var screen_origin_y = GUI.minimap_window_y;
var map_origin_x = Player.x-500;
var map_origin_y = Player.y-500;

draw_sprite(spr_location,0,scr_minimap_x(x-map_origin_x)+screen_origin_x,scr_minimap_y(y-map_origin_y)+screen_origin_y);