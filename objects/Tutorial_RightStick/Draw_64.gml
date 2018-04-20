/// @description Insert description here
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(global.window_width*.75,global.window_height-128,"Drag on the right side of the screen to aim.");
draw_set_halign(fa_left);
//draw_set_alpha(0.5);
//draw_rectangle_color(global.window_width/2,0,global.window_width,global.window_height,c_black,c_black,c_black,c_black,false);
//draw_set_alpha(1);
draw_sprite_stretched(spr_tutorial_leftstick,image_index,global.window_width*.75-128,global.window_height*.25,256,256);
