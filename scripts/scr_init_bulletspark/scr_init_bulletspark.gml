///scr_init_spark()

// Initialize our global blood particle
global.bulletspark_particles = part_type_create();
var pt = global.bulletspark_particles;

// Set the particle properties for appearance, etc.
part_type_sprite(pt, spr_spark,false,false,false);
part_type_size(pt, 1, 2, 0, 0);
part_type_color2(pt, c_white, c_yellow);
part_type_speed(pt, 2, 4, -.1, 0);
part_type_direction(pt, 60, 120, 0, 0);
part_type_gravity(pt, .2, 270);
part_type_life(pt, .2*room_speed, .4*room_speed);