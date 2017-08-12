if (Time.now mod room_speed == 0) {
	var pt = scr_init_twinkle(properties[? "Rarity color"]);
	part_particles_create(global.particles_above, x, y-4, pt, 1);
}