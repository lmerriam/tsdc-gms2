gui_mouse_x = device_mouse_x_to_gui(0);
gui_mouse_y = device_mouse_y_to_gui(0);
gui_mouse_delta_x = gui_mouse_x - gui_mouse_prev_x;
gui_mouse_delta_y = gui_mouse_y - gui_mouse_prev_y;
gui_mouse_delta = point_distance(0,0,abs(gui_mouse_delta_x),abs(gui_mouse_delta_y));
gui_mouse_clicked = false;
gui_mouse_over_hud = false;

if (mouse_check_button_pressed(mb_left)) {
	gui_mouse_origin_x = gui_mouse_x;
	gui_mouse_origin_y = gui_mouse_y;
} else if (mouse_check_button_released(mb_left)) {
	if gui_mouse_distance_traveled < 10 gui_mouse_click = true;
	else gui_mouse_dragged = true;
	gui_mouse_distance_traveled = 0;
	gui_mouse_timer = 0;
} else if (mouse_check_button(mb_left)) {
	gui_mouse_timer++;
	gui_mouse_distance_traveled += gui_mouse_delta;
}

// TODO: refactor this BS into a ds-based system of UI elements tied to menu state
if (global.current_menu == "HUD") {
	if (scr_check_btn(cast_btn)) {
		gui_mouse_over_hud = true;
    } else if (scr_check_btn(menu_btn)) {
		gui_mouse_over_hud = true;
    } else if (scr_check_btn(minimap_btn)) {
		gui_mouse_over_hud = true;
    } else if (nearest_drop_in_range and scr_mouse_over_ui(nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2)) {
		gui_mouse_over_hud = true;
    } else if (nearest_interactable_in_range and scr_check_btn(interact_btn)) {
		gui_mouse_over_hud = true;
	}
}

gui_mouse_prev_x = gui_mouse_x;
gui_mouse_prev_y = gui_mouse_y;