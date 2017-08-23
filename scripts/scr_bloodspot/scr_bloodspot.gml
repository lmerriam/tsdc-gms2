/// @description scr_bloodspot
/// @param x
/// @param y
/// @param chance

var xx = argument0;
var yy = argument1;
var chance = argument2;

if (scr_chance(chance)) { layer_sprite_create(layer_get_id("sprites"),xx,yy,choose(spr_bloodspot_1,spr_bloodspot_2,spr_bloodspot_3)) };