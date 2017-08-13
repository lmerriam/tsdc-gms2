/// Move in direction of mouse
event_inherited();
var dir = phy_rotation;
var len = 10 * global.timescale;
phy_position_x += lengthdir_x(len,dir);
phy_position_y += lengthdir_y(len,dir);