scr_damage(other,damage);
repeat (3) {
	part_particles_create(global.particles_above, other.x+random_range(-4,4), other.y+random_range(-4,4), global.flare_particles, 1);
}
instance_destroy();