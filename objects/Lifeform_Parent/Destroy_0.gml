/// Combust if effect is active
var effects = properties[? "Effects"];

var combust = effects[? "Combust"]
if (combust != undefined) {
    if (combust[? "Duration"] > 0) {
		var gem = scr_get_gem();
		var buffs = gem[? "Buffs"];
        scr_damage_obj(x,y,Attack_Radius_Large,Player.id,combust[? "Damage"],10,buffs);
		if (scr_chance(.5)) {layer_sprite_create(layer_get_id("sprites"),x,y,spr_crater_1)};
		
    }
}


/// Destroy DS
ds_map_destroy(effects);