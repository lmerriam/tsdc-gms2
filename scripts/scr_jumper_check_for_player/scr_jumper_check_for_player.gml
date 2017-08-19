var distance_to_player = point_distance(x,y,Player.x,Player.y);
if (distance_to_player < jump_range) {
	state = scr_jumper_aim_state;
	if (scr_alarm_passed(jump_alarm)) { jump_alarm = scr_sec_from_now(aim_dur) };
} else if (distance_to_player < sight) {
	state = scr_jumper_chase_state;
	jump_alarm = 0;
} else {
	state = scr_jumper_wander_state;
	jump_alarm = 0;
}