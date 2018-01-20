/// @description Insert description here
// You can write your code in this editor

if (stats[? "Health"] <= 0) {
	//instance_create_layer(x,y,"entities",damage_object);
	scr_damage_obj(x,y,damage_object,id,damage,knockback,noone);
	instance_destroy();
}