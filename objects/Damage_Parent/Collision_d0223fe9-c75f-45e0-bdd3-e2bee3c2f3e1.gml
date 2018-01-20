/// Damage player

if (Player != creator) {
	var stats = other.properties[? "Stats"];
    stats[? "Health"] -= clamp(damage-(scr_get_instance_stat(other,"Defense")),1,9999);
	
    //knockback
    scr_knockback(id, other.id, knockback);
    
    // Blood particles
    part_particles_create(global.particles_below, other.x, other.y, global.blood_particles, 10);
    
    // Shake the screen
    global.screen_shake += 3;
    
    // Armor effects
    // Thorns
	var armor = scr_get_armor();
	var buffs = armor[? "Buffs"];
    if (ds_map_exists(buffs,"Thorns") and instance_exists(creator)) {
        //scr_damage_obj(other.x,other.y,Attack_R
		var stats = creator.properties[? "Stats"];
        stats[? "Health"] -= ds_map_find_value(buffs[? "Thorns"],"Damage");
    }
}

