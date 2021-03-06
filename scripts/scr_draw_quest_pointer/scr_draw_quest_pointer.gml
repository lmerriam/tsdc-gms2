/// @description Draw an arrow from the player to a target
/// @param target_x
/// @param target_y
/// @param icon

var targetx = argument0;
var targety = argument1;
var icon = argument2;

var len = 96;
var pointer_dir = point_direction(Player.x,Player.y,targetx,targety);
var pointer_x = Player.x + lengthdir_x(len,pointer_dir);
var pointer_y = Player.y + lengthdir_y(len,pointer_dir);
var distance_to_target = point_distance(Player.x, Player.y, targetx, targety);

var icon_len = 86
var icon_x = Player.x + lengthdir_x(icon_len,pointer_dir);
var icon_y = Player.y + lengthdir_y(icon_len,pointer_dir);

if (scr_point_in_view(targetx,targety)) {
	draw_sprite_ext(spr_quest_current_minimap_icon,-1,targetx,targety-32,1,1,270,c_white,1);
} else if (distance_to_target >= len+8) {
	draw_sprite_ext(spr_location_pointer,0,pointer_x,pointer_y,1,1,pointer_dir,c_white,1);
	if (icon != noone) draw_sprite(icon,-1,icon_x,icon_y);
}