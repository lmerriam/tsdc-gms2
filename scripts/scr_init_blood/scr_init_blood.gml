///scr_init_blood()

// Initialize our global blood particle
global.blood_particles = part_type_create();
var pt = global.blood_particles;

// Set the particle properties for appearance, etc.
part_type_shape(pt, pt_shape_disk);
part_type_size(pt, .02, .07, 0, 0);
part_type_color2(pt, c_red, c_maroon);
part_type_speed(pt, 1, 5, -.3, 0);
part_type_direction(pt, 0, 360, 0, 0);
//part_type_gravity(pt, .2, 270);
part_type_life(pt, 25, room_speed*5);
