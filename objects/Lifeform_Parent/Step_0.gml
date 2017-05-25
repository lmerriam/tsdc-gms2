/// Depth and state and effects
event_inherited();

if (stats[? "Health"] <= 0) {
    instance_destroy();
    exit;
}

/// Effects
//show_debug_message("Effects for " + object_get_name(object_index));
if (ds_exists(effects, ds_type_map)) {

    if (effects[? "burn_duration"] > 0) {
        if (effects[? "burn_duration"] mod effects[? "burn_interval"] == 0) {
            part_particles_create(global.particles_below, x, y, global.flare_particles, 1);
            stats[? "Health"] -= effects[? "burn_damage"];
        }
        effects[? "burn_duration"]--;
    }

    if (effects[? "combust_duration"] > 0) {
        part_particles_create(global.particles_below, x, y, global.spark_particles, 1);
        effects[? "combust_duration"]--;
    }

    if (effects[? "freeze_duration"] > 0) {
        freeze_slow = effects[? "freeze_slow"];
        image_blend = c_aqua;
        effects[? "freeze_duration"]--;
    } else {
        freeze_slow = 0;
        image_blend = c_white;
    }

}

