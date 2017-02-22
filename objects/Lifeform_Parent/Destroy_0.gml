/// Combust if effect is active
var effects = properties[? "Effects"];

if (ds_exists(effects,ds_type_map)) {
    if (effects[? "combust_duration"] > 0) {
		var gem = scr_get_gem();
		var buffs = gem[? "Buffs"];
        scr_damage(x,y,Attack_Radius_Large,Player.id,effects[? "combust_damage"],10,buffs);
    }
}

/// Destroy DS

ds_map_destroy(effects);

