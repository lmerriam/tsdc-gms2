/// @description Draw the standard spell state
var weapon = scr_get_weapon();
var facing = 1;
if (global.aimdir > 90 and global.aimdir < 270) facing = -1;
draw_sprite_ext(weapon[? "Sprite"],0,x+facing*6,y-4,1,facing,global.aimdir,c_white,1);