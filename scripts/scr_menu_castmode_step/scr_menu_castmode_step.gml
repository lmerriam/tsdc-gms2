// Cast ye old spells
if (mouse_check_button_released(1)) {
	var spell = scr_get_spell();
	if (spell != noone) {
		global.aim_dir = point_direction(Player.x, Player.y, mouse_x, mouse_y);
		script_execute(asset_get_index(spell[? "Spell Script"]));
	
		// Affect player stats
		//Player.spell_timer = scr_sec_from_now(Player.spell_cd);
		var stamina = scr_get_instance_stat(Player,"Stamina") - scr_spell_stat("Fatigue");
		scr_set_instance_stat(Player,"Stamina",stamina);
	}

	// Leave cast mode
	scr_menu_hud();
	global.cast_mode = false;

}