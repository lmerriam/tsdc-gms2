/// Spawn loot
layer_sprite_create(layer_get_id("sprites"),x,y,spr_chest_opened);
scr_spawn_equipment(x,y,properties[? "Loot"]);
instance_destroy();