// Create chest registry
global.chests = ds_map_create();

global.equipment = scr_load_json("equipment");
global.buffs = scr_load_json("buffs");
global.rarity = ["Common","Uncommon","Rare","Epic"];

// TODO: remove this
scr_spawn_equipment(Player.x+32,Player.y+32,"SMG");