/// Draw top bar buttons
scr_draw_overlay();
draw_set_halign(fa_center)
draw_set_font(PixelSmall_12);
for (i=0;i<ds_list_size(tab_btns);i++) {
    scr_draw_tab_btn(tab_btns[| i]);
}
draw_set_halign(fa_left);