if (state == scr_jumper_jump_state) {
	draw_sprite_ext(sprite_index,0,x,y-8,1,1.1,0,image_blend,1);
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_ellipse(x-6,y-2,x+6,y+2,false);
	draw_set_alpha(1)
} else {
	draw_self();
}