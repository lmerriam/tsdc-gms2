/// Rotate object
image_speed = 0;

// Bomb timer
explode_timer = scr_sec_from_now(2);

// Throw it in the direction of the mouse
dir = global.mousedir;
force = 20;
physics_apply_local_impulse(random_range(-1,1), random_range(-1,1), lengthdir_x(force,dir), lengthdir_y(force,dir));

