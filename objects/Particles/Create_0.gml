/// Init particle system

global.particles_below = part_system_create();
part_system_depth(global.particles_below, 300);
scr_init_dust();
scr_init_blood();

global.particles_above = part_system_create();
part_system_depth(global.particles_above, -99999);

scr_init_flare();
scr_init_spark();
scr_init_dustcloud();
scr_init_footstep();
scr_init_bulletspark();

//part_system_automatic_update(global.particles_below, false);
//part_system_automatic_update(global.particles_below, false);