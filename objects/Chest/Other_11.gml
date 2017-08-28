/// Spawn loot
layer_sprite_create(layer_get_id("sprites"),x,y,spr_chest_opened);
var loot = scr_spawn_equipment(x,y,properties[? "Loot"]);
var rarity = scr_choose_rarity(1,1,0.5);
//show_debug_message("Rarity: " + string(rarity))
scr_buff_equipment(loot.properties,rarity)
instance_destroy();