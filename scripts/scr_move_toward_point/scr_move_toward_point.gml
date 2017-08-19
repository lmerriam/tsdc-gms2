/// @description Move toward coordinates
/// @param target x
/// @param target y
/// @param speed

var targetx = argument0;
var targety = argument1;
var spd = argument2;

var dir = point_direction(x,y,targetx,targety);

var hspd = lengthdir_x(spd,dir);
var vspd = lengthdir_y(spd,dir);

phy_position_x += hspd;
phy_position_y += vspd;