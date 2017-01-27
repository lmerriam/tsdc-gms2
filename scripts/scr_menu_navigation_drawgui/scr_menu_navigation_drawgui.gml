/// Draw top bar buttons
draw_set_color(c_black);
draw_set_alpha(.7);
draw_rectangle_fast(0,0,global.window_width,global.window_height);
draw_set_alpha(1);
draw_set_halign(fa_center)
for (i=0;i<ds_list_size(tab_btns);i++) {
    scr_draw_tab_btn(tab_btns[| i]);
}
draw_set_halign(fa_left);