///scr_enemy_wander_state
scr_check_for_player();
var spd_final = (stats[? "Speed"] - freeze_slow) * global.timescale;

if (point_distance(x,y,targetx,targety) > stats[? "Speed"]) {
    var dir = point_direction(x,y,targetx,targety);
    var hspd = lengthdir_x(spd_final, dir);
    var vspd = lengthdir_y(spd_final, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
}
