var spell = scr_get_spell();
if (global.spell_button and Player.stats[? "Stamina"] >= scr_spell_stat("Fatigue") and scr_alarm_passed(Player.spell_timer)) {
	if (spell != noone) {
		var spell_stats = spell[? "Stats"];
		script_execute(asset_get_index(spell[? "Spell Script"]));
	    Player.stats[? "Stamina"] -= scr_spell_stat("Fatigue");
	    Player.spell_timer = scr_sec_from_now(scr_spell_stat("Cooldown"));
	}
}