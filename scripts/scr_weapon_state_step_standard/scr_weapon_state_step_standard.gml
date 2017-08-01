if (Player.attack_button and scr_alarm_passed(Player.attack_timer)) {
	//show_debug_message("Firing");
	var weapon = scr_get_weapon();
	if (weapon!=noone) {
		script_execute(weapon[? "Attack Script"]);
		Player.attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
	}
}