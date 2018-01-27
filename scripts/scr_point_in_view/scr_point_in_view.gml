/// @description Determine whether a point is in the visible area of the room
/// @param xx
/// @param yy

var xx = argument0;
var yy = argument1;

var view_x1 = __view_get( e__VW.XView, 0 );
var view_y1 = __view_get( e__VW.YView, 0 );
var view_x2 = view_x1 + __view_get( e__VW.WView, 0 );
var view_y2 = view_y1 + __view_get( e__VW.HView, 0 );

if (xx > view_x1 and xx < view_x2 and yy > view_y1 and yy < view_y2) {
	return true;
} else {
	return false;
}