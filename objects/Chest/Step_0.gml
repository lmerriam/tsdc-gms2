if (Time.now mod 20 == 0) {
	var pt = scr_init_twinkle(c_yellow);
	part_particles_create(global.particles_above, x+irandom_range(-4,4), y-8, pt, 1);
}