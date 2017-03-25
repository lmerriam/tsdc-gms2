// Cast ye old spells
if (mouse_check_button_released(1)) {
	var spell = scr_get_spell();
	if (spell != noone) {
		script_execute(spell[? "Spell Script"]);
	
		// Affect player stats
		//Player.spell_timer = scr_sec_from_now(Player.spell_cd);
		var stamina = scr_get_instance_stat(Player,"Stamina") - scr_spell_stat("Fatigue");
		scr_set_instance_stat(Player,"Stamina",stamina);
	}

	// Leave cast mode
	scr_menu_hud();
	global.cast_mode = false;
	global.timescale = 1;

}