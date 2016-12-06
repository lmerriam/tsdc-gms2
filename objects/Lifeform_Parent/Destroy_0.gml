/// Combust if effect is active
if (ds_exists(effects,ds_type_map)) {
    if (effects[? "combust_duration"] > 0) {
        scr_damage(x,y,Attack_Radius_Large,Player.id,effects[? "combust_damage"],10,scr_get_gem().buffs);
    }
}

/// Destroy DS

ds_map_destroy(effects);

