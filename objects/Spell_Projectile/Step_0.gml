/// Move in direction of mouse
event_inherited();
var dir = phy_rotation;
var len = 10 * global.timescale;
phy_position_x += lengthdir_x(len,dir);
phy_position_y += lengthdir_y(len,dir);

var dis = distance_to_point(start_x,start_y);
if (dis > 256) instance_destroy();