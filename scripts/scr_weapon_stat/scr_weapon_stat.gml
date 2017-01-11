/// scr_weapon_stat("stat name")
var stat_name = argument0;
var weapon = scr_get_weapon();
var stats = weapon[? "Stats"];

return stats[? stat_name];