// Cast ye old spells
if (mouse_check_button_released(1)) {
	var spell = scr_get_spell().properties[? "Spell Script"];
	script_execute(spell);

	// Leave cast mode
	scr_menu_hud();
	global.cast_mode = false;
	global.timescale = 1;

	// Affect player stats
	//Player.spell_timer = scr_sec_from_now(Player.spell_cd);
	Player.stats[? "Stamina"] -= scr_get_spell().stats[? "Fatigue"];
}