// Reset buttons
global.attack_button = false;
global.attack_button_pressed = false;
global.attack_button_released = false;
global.spell_button = false;
global.spell_button_pressed = false;
global.spell_button_released = false;

if (global.current_menu == "HUD") {
	//if (GUI.gui_mouse_down) global.attack_button = true;
	//if (mouse_right) global.spell_button = true;
	if (GUI.gui_mouse_over_hud) {
		if (GUI.gui_mouse_dragging) global.attack_button = true;
	} else {
		if GUI.gui_mouse_pressed global.attack_button_pressed = true;
		if GUI.gui_mouse_down global.attack_button = true;
		if GUI.gui_mouse_released global.attack_button_released = true;
	}
	if (mouse_right) global.spell_button = true;
}

// Check for action buttons
//if !GUI.gui_mouse_over_hud {
//	if (GUI.gui_mouse_released) {
//		global.attack_button_released = true;
//		global.spell_button_released = true;
//	}
//	if (GUI.gui_mouse_pressed) global.attack_button_pressed = true;
//	if (mouse_check_button_pressed(mb_right)) global.spell_button_pressed = true;
//}

//Get aiming direction and distance
global.aim_dir = point_direction(Player.x, Player.y, GUI.room_mouse_x, GUI.room_mouse_y);
global.aim_len = point_distance(Player.x, Player.y, GUI.room_mouse_x, GUI.room_mouse_y);
        
//Get moving direction
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);
global.move_dir = point_direction(0,0, xaxis, yaxis);

// Get move speed
if (xaxis == 0 and yaxis == 0) {
    global.move_len = 0;
} else {
    global.move_len = Player.stats[? "Speed"];
}