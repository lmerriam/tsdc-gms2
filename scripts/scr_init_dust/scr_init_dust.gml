///scr_init_spark()

// Initialize our global blood particle
global.dust_particles = part_type_create();
var pt = global.dust_particles;

// Set the particle properties for appearance, etc.
part_type_sprite(pt, spr_spark,false,false,false);
part_type_size(pt, 1, 1, 0, 0);
part_type_color2(pt, c_white, c_gray);
part_type_speed(pt, 3, 4, -.2, 0);
part_type_direction(pt, 0, 360, 0, 0);
//part_type_gravity(pt, 1, 90);
part_type_life(pt, .25*room_speed, .5*room_speed);
