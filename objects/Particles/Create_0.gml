/// Init particle system

global.particles_below = part_system_create();
part_system_depth(global.particles_below, 101);

scr_init_blood();

global.particles_above = part_system_create();
part_system_depth(global.particles_above, -99999);

scr_init_flare();
scr_init_spark();