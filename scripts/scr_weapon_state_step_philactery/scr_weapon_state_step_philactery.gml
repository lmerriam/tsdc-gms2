if (global.attack_button and scr_alarm_passed(attack_timer)) {
	var phil = instance_create_layer(x,y,"entities",Attack_Philactery);
	phil.dir = global.aim_dir;
	
	attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
}