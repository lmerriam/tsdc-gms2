image_yscale = 1;

scr_jumper_check_for_player();

scr_move_toward_point(targetx,targety,spd_final);

if (scr_alarm_passed(wander_alarm)) {
	wander_alarm = scr_sec_from_now(irandom_range(2,4));
    targetx = random_range(spawn_x-128,spawn_x+128);
    targety = random_range(spawn_y-128,spawn_y+128);
}