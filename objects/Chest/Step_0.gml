if (Time.now mod room_speed == 0) {
	var pt = scr_init_twinkle(c_yellow);
	part_particles_create(global.particles_above, x, y-4, pt, irandom(3));
}