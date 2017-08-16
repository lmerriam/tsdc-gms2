scr_damage_obj(x,y,Attack_Radius,id,5,10,buffs);
jump_alarm = scr_sec_from_now(2);

if (point_distance(x,y,Player.x,Player.y) < sight) {
	state = scr_jumper_aim_state;
} else {
	state = scr_jumper_wander_state;
}