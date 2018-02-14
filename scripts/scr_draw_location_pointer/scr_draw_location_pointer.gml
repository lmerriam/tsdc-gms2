/// @description Draw an arrow from the player to a target
/// @param target_x
/// @param target_y
/// @param icon

var targetx = argument0;
var targety = argument1;
var icon = argument2;

var originx = global.window_width/2;
var originy = global.window_height/2;
var padding = 16;

// Figure out the ratio
var dir = point_direction(View.x,View.y,targetx,targety);
var lenx = lengthdir_x(1,dir);
var leny = lengthdir_y(1,dir);
var ratio = lenx/leny;

var xx;
var yy;

// Check if the sprite should be on the left/right or tßop/bottom of the screen
if (!scr_point_in_view(targetx,targety)) {
	if (abs(ratio) > global.window_ratio) {
		var ww = sign(lenx)*(originx-padding);
		xx = originx + ww;
		yy = originy + ww / ratio;
	} else {
		var hh = sign(leny)*(originy-padding);
		yy = originy + hh;
		xx = originx + hh * ratio;
	}
	draw_sprite_ext(icon,0,xx,yy,2,2,0,c_white,0.75);
}