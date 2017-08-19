global.attack_button = false;
global.attack_button_pressed = false;
global.attack_button_released = false;
global.spell_button = false;
global.spell_button_pressed = false;
global.spell_button_released = false;

//Get aiming direction and distance
global.aim_dir = point_direction(Player.x, Player.y, mouse_x, mouse_y);
global.aim_len = point_distance(Player.x, Player.y, mouse_x, mouse_y);
        
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

// Check for action buttons
if (mouse_left) global.attack_button = true;
if (mouse_check_button_pressed(mb_left)) global.attack_button_pressed = true;
if (mouse_check_button_released(mb_left)) global.attack_button_released = true;
if (mouse_right) global.spell_button = true;
if (mouse_check_button_pressed(mb_right)) global.spell_button_pressed = true;
if (mouse_check_button_released(mb_right)) global.spell_button_released = true;
