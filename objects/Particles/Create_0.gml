/// Init particle system

global.particles_below = part_system_create();
part_system_depth(global.particles_below, 1);

scr_init_blood();

global.particles_above = part_system_create();
part_system_depth(global.particles_above, -99999999);

scr_init_flare();
scr_init_spark();