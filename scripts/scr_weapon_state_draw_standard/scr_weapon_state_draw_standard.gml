/// @description Draw the standard spell state
var weapon = scr_get_weapon();
var facing = 1;
if (global.aim_dir > 90 and global.aim_dir < 270) facing = -1;
draw_sprite_ext(weapon[? "Sprite"],0,global.weapon_origin_x,global.weapon_origin_y,1,facing,global.aim_dir,c_white,1);