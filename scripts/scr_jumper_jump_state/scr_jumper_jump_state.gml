var jump_spd = 3 * (1-freeze_slow) * global.timescale;

scr_move_toward_point(jump_target_x,jump_target_y,jump_spd*(1-freeze_slow));

if (point_distance(x,y,jump_target_x,jump_target_y) < jump_spd) {
	state = scr_jumper_land_state;
}