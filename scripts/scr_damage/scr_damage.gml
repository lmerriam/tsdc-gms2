///scr_damage(instance,damage)
/// @param inst
/// @param damage
var inst = argument0;
var dmg = argument1;

if (instance_exists(inst)) {
	scr_set_instance_stat(inst,"Health",scr_get_instance_stat(inst,"Health")-dmg);
	var counter = instance_create_layer(inst.x,inst.y-16,"system_objects",Damage_Counter);
	counter.damage = dmg;
}