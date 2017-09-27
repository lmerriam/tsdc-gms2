/// Depth and state and effects
event_inherited();

if (stats[? "Health"] <= 0) {
    instance_destroy();
    exit;
}

/// Effects
//scr_debug_map(effects);

// TODO: figure out how to combine colors for multiple effects

if (ds_exists(effects, ds_type_map)) {
	
	var burn = effects[? "Burn"];
    if (burn != undefined and burn[? "Duration"] > 0) {
        if (burn[? "Duration"] mod room_speed*global.timescale == 0) {
            part_particles_create(global.particles_above, x, y, global.flare_particles, 1);
            stats[? "Health"] -= burn[? "Damage"];
        }
        burn[? "Duration"]--;
    }
	
	var combust = effects[? "Combust"];
    if (combust != undefined and combust[? "Duration"] > 0) {
        part_particles_create(global.particles_above, x, y, global.spark_particles, 1);
        combust[? "Duration"]--;
    }
	
	var freeze = effects[? "Freeze"];
    if (freeze != undefined and freeze[? "Duration"] > 0) {
        freeze_slow = freeze[? "Slow"];
        image_blend = c_aqua;
        freeze[? "Duration"]--;
    } else {
        freeze_slow = 0;
        image_blend = c_white;
    }

}

