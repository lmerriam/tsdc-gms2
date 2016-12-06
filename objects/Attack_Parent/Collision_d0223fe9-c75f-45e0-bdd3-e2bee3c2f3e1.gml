/// Damage player

if (other.id != creator) {
    other.stats[? "Health"] -= clamp(damage-(other.stats[? "Defense"]),1,9999);
	
    //knockback
    scr_knockback(id, other.id, knockback);
    
    // Blood particles
    part_particles_create(global.particles_below, other.x, other.y, global.blood_particles, 10);
    
    // Shake the screen
    global.screen_shake += 3;
    
    // Armor effects
    // Thorns
    if (scr_get_armor().buffs[? "thorns"] = true and instance_exists(creator)) {
        //scr_damage(other.x,other.y,Attack_R
        creator.stats[? "Health"] -= scr_get_armor().buffs[? "thorns_damage"];
    }
}

