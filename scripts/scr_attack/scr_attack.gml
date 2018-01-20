/// @description Deal damage, cause bleeding, shake screen, etc
/// @param victim
/// @param creator
/// @param damage
/// @param effects
/// @param knockback
/// @param buffs

var victim = argument0;
var attacker = argument1;
var damage = argument2;
var effects = argument3;
var knockback = argument4;
var buffs = argument5;

if (victim != attacker and scr_is_damaged_by(victim,attacker)) {
	
	// Damage victim
	scr_damage(victim,damage);
	
	// Cause bleeding and blood spots
	// TODO: consider whether blood and blood spots should be used contextually
	if (victim.bleeds) {
		part_particles_create(global.particles_below, victim.x, victim.y, global.blood_particles, 10);
		scr_bloodspot(victim.x, victim.y, 0.3);
	}
	
	// Shake screen
	global.screen_shake += clamp(damage,0,3);
	
	// Confer effects
	scr_confer_effects(victim.properties[? "Effects"],buffs);
	
	// Knock victim back
	// TODO: Consider whether knockback should be pulled out of scr_attack and used contextually (ie bullets knock people back from a different origin than blades)
	scr_knockback(attacker,victim,knockback);
	
}