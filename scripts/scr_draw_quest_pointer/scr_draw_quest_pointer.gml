/// @description Draw an arrow from the player to a target
/// @param target_x
/// @param target_y

var targetx = argument0;
var targety = argument1;

var len = 96;
var pointer_dir = point_direction(Player.x,Player.y,targetx,targety);
var pointer_x = Player.x + lengthdir_x(len,pointer_dir);
var pointer_y = Player.y + lengthdir_y(len,pointer_dir);
var distance_to_target = point_distance(Player.x, Player.y, targetx, targety);

var view_x1 = __view_get( e__VW.XView, 0 );
var view_y1 = __view_get( e__VW.YView, 0 );
var view_x2 = view_x1 + __view_get( e__VW.WView, 0 );
var view_y2 = view_y1 + __view_get( e__VW.HView, 0 );

if ( targetx > view_x1 and targetx < view_x2 and targety > view_y1 and targety < view_y2) {
	draw_sprite_ext(spr_location_pointer,0,targetx,targety-32,1,1,270,c_white,1);
} else if (distance_to_target >= len+8) {
	draw_sprite_ext(spr_location_pointer,0,pointer_x,pointer_y,1,1,pointer_dir,c_white,1);
}