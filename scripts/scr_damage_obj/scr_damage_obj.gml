/// @description scr_damage_obj(x,y,dmg_obj,creator,damage,knockback,buffs)
/// @param x
/// @param y
/// @param dmg_obj
/// @param creator
/// @param damage
/// @param knockback
/// @param buffs

var xx = argument[0];
var yy = argument[1];
var dmg_obj = argument[2];
var creator = argument[3];
var damage = argument[4];
var knockback = argument[5];
var buffs = argument[6];

var dmg_inst = instance_create_layer(xx, yy, "system_objects", dmg_obj);
dmg_inst.creator = creator;
dmg_inst.damage = damage;
dmg_inst.knockback = knockback;
dmg_inst.buffs = buffs;