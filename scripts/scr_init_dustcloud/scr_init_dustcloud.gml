///scr_init_flare()

// Initialize our global blood particle
global.dustcloud_particles = part_type_create();
var pt = global.dustcloud_particles;

// Set the particle properties for appearance, etc.
part_type_sprite(pt,spr_dust_cloud,true,true,false);
part_type_size(pt, 1, 1, 0, 0);
//part_type_speed(pt, .5, 1, 0, 0);
//part_type_direction(pt, 90, 90, 0, 0);
part_type_life(pt,room_speed,room_speed);