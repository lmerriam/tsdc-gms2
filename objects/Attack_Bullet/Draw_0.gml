/// Draw collisions and lines
var dir = global.aim_dir + random_range(-aim_vary,aim_vary);
var range = 200;
targetx = global.weapon_origin_x + lengthdir_x(range, dir);
targety = global.weapon_origin_y + lengthdir_y(range, dir);

with (Player) {
	other.victim = scr_hitscan(global.weapon_origin_x, global.weapon_origin_y, other.targetx, other.targety, Entity_Parent, false, true);
}

if (victim != noone) {
	draw_set_color(c_white);
	draw_line_width(global.weapon_origin_x, global.weapon_origin_y, x+lengthdir_x(distance_to_object(victim),dir), y+lengthdir_y(distance_to_object(victim),dir), 1);
	//show_debug_message("Victim: " + object_get_name(victim.object_index));
	scr_attack(victim,Player.id,damage,victim.properties[? "Effects"],knockback,buffs);
	//part_particles_create(global.particles_above,victim.x,victim.y,global.bulletspark_particles,5);
} else {
	draw_set_color(c_white);
    draw_line_width(global.weapon_origin_x, global.weapon_origin_y, targetx, targety, 1);
	part_particles_create(global.particles_above,targetx,targety,global.bulletspark_particles,5);
	//draw_circle(targetx,targety,2,false);
}