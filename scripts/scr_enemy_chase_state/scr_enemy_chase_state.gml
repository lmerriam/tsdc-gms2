///scr_enemy_chase_state
scr_check_for_player();
var spd_final = (stats[? "Speed"] - freeze_slow) * global.timescale;

var dir = point_direction(x,y,targetx,targety);
var hspd = lengthdir_x(spd_final, dir);
var vspd = lengthdir_y(spd_final, dir);
image_xscale = sign(hspd);
phy_position_x += hspd;
phy_position_y += vspd;
