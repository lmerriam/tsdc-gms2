/// @description Insert description here


if (stats[? "Health"] <= 0) {
	scr_damage_obj(x,y,damage_object,id,damage,knockback,noone);
	instance_destroy();
} else if (stats[? "Health"] <= stats[? "Max Health"]/2) {
	image_index = 1;
	if scr_chance(0.015) part_particles_create(global.particles_above,x+random_range(-8,8),y+random_range(-8,8),global.dustcloud_particles,1);
}