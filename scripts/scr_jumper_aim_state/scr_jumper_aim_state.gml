image_yscale = .75;

var player_distance = point_distance(x,y,Player.x,Player.y);
if (scr_alarm_passed(jump_alarm) and player_distance < jump_range) {
	state = scr_jumper_jump_state;
	jump_start_x = x;
	jump_start_y = y;
	jump_target_x = Player.x;
	jump_target_y = Player.y;
} else {
	scr_jumper_check_for_player();
}