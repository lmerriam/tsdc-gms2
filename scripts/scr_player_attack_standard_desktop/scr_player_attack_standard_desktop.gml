// Left Attack
if (attack_button and scr_alarm_passed(attack_timer)) {
	var weapon = scr_get_weapon();
	if (weapon!=noone) {
		script_execute(weapon[? "Attack Script"]);
		attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
	}
}
    
// Right attack
var spell = scr_get_spell();
if (spell_button and stats[? "Stamina"] >= scr_spell_stat("Fatigue") and scr_alarm_passed(spell_timer)) {
	if (spell != noone) {
		var spell_stats = spell[? "Stats"];
		script_execute(spell[? "Spell Script"]);
	    stats[? "Stamina"] -= scr_spell_stat("Fatigue");
	    spell_timer = scr_sec_from_now(scr_spell_stat("Cooldown"));
	}
}