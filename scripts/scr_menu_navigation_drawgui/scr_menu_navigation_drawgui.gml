/// Draw top bar buttons
draw_set_halign(fa_center)
draw_set_font(PixelSmall_12);
var num_btns = ds_list_size(tab_btns);
for (i=0;i<num_btns;i++) {
    scr_draw_tab_btn(tab_btns[| i]);
}
draw_set_halign(fa_left);