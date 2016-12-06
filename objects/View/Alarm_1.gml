/// Handle instance activation
if (global.current_menu = noone) {
    scr_handle_deactivation();
    with (Drop_Parent) scr_update_drop_tooltip();
}
alarm[1] = .5 * room_speed;
