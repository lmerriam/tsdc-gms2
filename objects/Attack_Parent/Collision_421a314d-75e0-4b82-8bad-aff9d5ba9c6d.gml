/// Damage all life forms

if (creator == Player.id) {
	var stats = other.properties[? "Stats"];
	if (ds_exists(other.properties[? "Stats"],ds_type_map)) stats[? "Health"]-= damage;
	
	show_debug_message("Damage instance exists: " + string(instance_exists(id)));
	show_debug_message("Damage instance x: " + string(x));
	
    scr_knockback(id, other.id, knockback);
    
    // Blood particles
    part_particles_create(global.particles_below, other.x, other.y, global.blood_particles, 10);
    
    // Shake the screen
    global.screen_shake += 3;
    
	// Confer effects 
	var effects = other.properties[? "Effects"];
    if(ds_exists(effects,ds_type_map) and ds_exists(buffs,ds_type_map)) {
        ds_map_copy(effects,buffs);
    }
}