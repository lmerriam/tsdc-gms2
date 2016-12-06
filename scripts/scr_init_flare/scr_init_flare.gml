///scr_init_flare()

// Initialize our global blood particle
global.flare_particles = part_type_create();
var pt = global.flare_particles;

// Set the particle properties for appearance, etc.
part_type_sprite(pt,spr_flare,true,true,false);
part_type_size(pt, 1, 1.5, 0, 0);
part_type_speed(pt, .5, 1, 0, 0);
part_type_direction(pt, 90, 90, 0, 0);
part_type_life(pt,.3*room_speed,.5*room_speed);
