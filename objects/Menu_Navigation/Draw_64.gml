/// Draw top bar buttons
draw_set_colour(c_black);
draw_set_alpha(.7);
draw_rectangle(0,0,global.window_width,global.window_height,false);
draw_set_alpha(1);

for (i=0;i<ds_list_size(tab_btns);i++) {
    scr_draw_tab_btn(tab_btns[| i]);
}

