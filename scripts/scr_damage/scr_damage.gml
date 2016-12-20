///scr_damage(x,y,dmg_obj,creator,damage,knockback,buffs)
var xx = argument[0];
var yy = argument[1];
var dmg_obj = argument[2];
var creator = argument[3];
var damage = argument[4];
var knockback = argument[5];
var buffs = argument[6];

var dmg_inst = instance_create_layer(xx, yy, "game_objects", dmg_obj);
dmg_inst.creator = creator;
dmg_inst.damage = damage;
dmg_inst.knockback = knockback;
dmg_inst.buffs = buffs;
