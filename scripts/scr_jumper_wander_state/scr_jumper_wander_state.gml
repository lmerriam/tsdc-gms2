image_yscale = 1;
var distance_to_player = point_distance(x,y,Player.x,Player.y);
if (distance_to_player < sight) {
	state = scr_jumper_aim_state;
	jump_alarm = scr_sec_from_now(2);
};