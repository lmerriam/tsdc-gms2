/// Get UI click

global.mouse_over_ui = false;

for (i = 0; i < ds_list_size(buttons); i++ ) {
    var btn = buttons[| i];
    if scr_check_btn(btn) global.mouse_over_ui = true;
    current_btn = btn;
}

