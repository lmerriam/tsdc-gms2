/// scr_spell_stat("stat name")
var stat_name = argument0;
var spell = scr_get_spell();
var stats = spell[? "Stats"];

return stats[? stat_name];