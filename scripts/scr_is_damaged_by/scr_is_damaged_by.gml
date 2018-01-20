/// @description Check if two instances are allies
/// @param victim
/// @param attacker
var victim = argument0;
var attacker = argument1;

// Player and enemy != ally
// Player and prop != ally
// Enemy and prop != ally
// Enemy and enemy = ally
// Prop and prop == 

if (victim.damaged_by != noone and ds_list_find_index(victim.damaged_by,attacker) != false) {
	return true;
} else {
	return false;
}