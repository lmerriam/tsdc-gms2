/// @param xx
/// @param yy
/// @param icon
/// @param show_outside_radius

var xx = argument0;
var yy = argument1;
var icon = argument2;
var show_outside_radius = argument3;

var radius = 512;
var minimap_radius = 64;
var ratio = radius/minimap_radius;

var dis = point_distance(Player.x,Player.y,xx,yy);
var dir = point_direction(Player.x,Player.y,xx,yy);
var dx = lengthdir_x(dis,dir);
var dy = lengthdir_y(dis,dir);

//var img_count = sprite_get_number(icon);
//var frame = Time.now div (img_count*3);

if (dis < radius) {
	var xx = GUI.minimap_center_x + dx/ratio;
	var yy = GUI.minimap_center_y + dy/ratio;
	draw_sprite_ext(icon,-1,xx,yy,2,2,0,c_white,1);
} else if (show_outside_radius) {
	dis = clamp(point_distance(Player.x,Player.y,xx,yy),0,radius);
	dx = lengthdir_x(dis,dir);
	dy = lengthdir_y(dis,dir);
	var xx = GUI.minimap_center_x + dx/ratio;
	var yy = GUI.minimap_center_y + dy/ratio;
	draw_sprite_ext(icon,-1,xx,yy,2,2,0,c_white,1);
}