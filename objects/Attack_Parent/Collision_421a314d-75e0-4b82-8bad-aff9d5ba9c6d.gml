/// Damage all life forms

if (creator == Player.id and ds_exists(other.properties,ds_type_map)) {

	var stats = other.properties[? "Stats"];
	if (stats != undefined and damage != undefined) {stats[? "Health"]-= damage};
	
    scr_knockback(id, other.id, knockback);
    
    // Blood particles
    part_particles_create(global.particles_below, other.x, other.y, global.blood_particles, 10);
    
    // Shake the screen
    global.screen_shake += 3;
    
	// Confer effects 
	var effects = other.properties[? "Effects"];
	scr_confer_effects(effects,buffs);
}