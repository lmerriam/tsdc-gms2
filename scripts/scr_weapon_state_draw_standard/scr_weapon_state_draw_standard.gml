/// @description Draw the standard spell state
var weapon = scr_get_weapon();
var facing = 1;
if (global.mousedir > 90 and global.mousedir < 270) facing = -1;
draw_sprite_ext(weapon[? "Sprite"],0,x+facing*6,y-4,1,facing,global.mousedir,c_white,1);