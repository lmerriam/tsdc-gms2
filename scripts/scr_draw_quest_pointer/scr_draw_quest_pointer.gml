/// @description Draw an arrow from the player to a target
/// @param target_x
/// @param target_y

var targetx = argument0;
var targety = argument1;

var len = 32;
var pointer_dir = point_direction(Player.x,Player.y,targetx,targety);
var pointer_x = Player.x + lengthdir_x(len,pointer_dir);
var pointer_y = Player.y + lengthdir_y(len,pointer_dir);
var distance_to_target = point_distance(Player.x, Player.y, targetx, targety);


if (distance_to_target >= len+8) {
	draw_sprite_ext(spr_location_pointer,0,pointer_x,pointer_y,1,1,pointer_dir,c_white,1);
}