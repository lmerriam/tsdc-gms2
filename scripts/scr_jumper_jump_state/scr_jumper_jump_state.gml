var jump_spd = 3 * (1-freeze_slow) * global.timescale;

var dir = point_direction(x,y,jump_target_x,jump_target_y);
var hspd = lengthdir_x(jump_spd, dir);
var vspd = lengthdir_y(jump_spd, dir);

phy_position_x += hspd;
phy_position_y += vspd;

if (point_distance(x,y,jump_target_x,jump_target_y) < jump_spd) {
	phy_position_x = jump_target_x;
	phy_position_y = jump_target_y;
	state = scr_jumper_land_state;
}