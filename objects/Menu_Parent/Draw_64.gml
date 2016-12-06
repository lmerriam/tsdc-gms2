/// Draw buttons
for (i = 0; i < ds_list_size(buttons); i++) {
    var btn = buttons[| i];
    if (btn[4] != noone) scr_draw_btn_sprite(btn);
}

