var len;
var dir;

attack_button = false;
spell_button = false;

if (os_type == os_android) {
        
    if (device_mouse_check_button(0,mb_left)) {
		var move_touch = 0;
		var aim_touch = 0;
            
        // Figure out move and aim touches based on the side of the
        // screen the first touch occurs on
        if (device_mouse_x_to_gui(0) < global.window_width/2) {
            move_touch = 0;
            aim_touch = 1;
        } else {
            move_touch = 1;
            aim_touch = 0;
        }
            
        // Get the coordinates of the current move device
        var move_touch_x = device_mouse_x_to_gui(move_touch);
        var move_touch_y = device_mouse_y_to_gui(move_touch);
            
        // Get the coordinates of the aim device
        var aim_touch_x = device_mouse_x_to_gui(aim_touch);
        var aim_touch_y = device_mouse_y_to_gui(aim_touch);
            
        // If the move touch started this frame, set the move origin
        if (device_mouse_check_button_pressed(move_touch,mb_left)) {
            move_origin_x = move_touch_x;
            move_origin_y = move_touch_y;
        }
        // If the aim touch started this frame, set the aim origin
        if (device_mouse_check_button_pressed(aim_touch,mb_left)) {
            aim_origin_x = aim_touch_x;
            aim_origin_y = aim_touch_y;
        }
            
        // Get the length if the move device is active
        if (device_mouse_check_button(move_touch,mb_left)) {
            len = clamp(point_distance(move_origin_x,move_origin_y,move_touch_x,move_touch_y),0,stats[? "Speed"]);
            dir = point_direction(move_origin_x,move_origin_y,move_touch_x,move_touch_y);
            global.aimdir = dir;
        } else {
            len = 0;
            dir = 0;
        }
            
        // Get the mouse direction if the aim device is active
        if (device_mouse_check_button(aim_touch,mb_left) and point_distance(aim_origin_x, aim_origin_y, aim_touch_x, aim_touch_y) > 16) {
            global.aimdir = point_direction(aim_origin_x, aim_origin_y, aim_touch_x, aim_touch_y);
            attack_button = true;
        }
            
        if (device_mouse_check_button(aim_touch,mb_right)) {
            spell_button = true;
        }
            
    } else {
        len = 0;
        dir = 0;
    }
        
} else {
    //Get mousedir
    global.aimdir = point_direction(x, y, mouse_x, mouse_y);
        
    //Get axis
    var xaxis = (right_key - left_key);
    var yaxis = (down_key - up_key);
        
    // Get direction
    dir = point_direction(0,0, xaxis, yaxis);
        
    // Get length
    if (xaxis == 0 and yaxis == 0) {
        len = 0;
    } else {
        len = stats[? "Speed"];
    }
        
    if (mouse_left) attack_button = true;
    if (mouse_right) spell_button = true;
}
    
// Calculate hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);
    
// Set up the player sprite
front = true;
orientation = true;
if (global.aimdir > 90 and global.aimdir < 270) orientation = -1 else orientation = 1;
if (global.aimdir < 135 and global.aimdir > 45) front = false else front = true;
image_xscale = orientation*scale;
    
if (len > 0) {
    
    if (front) {
        sprite_index = spr_player_running;
    } else {
        sprite_index = spr_player_running_back;
    }
    if (sign(hspd) == orientation) image_speed = img_spd else image_speed = -img_spd;
        
} else {
    if (front) {
        sprite_index = spr_player_idle;
    } else {
        sprite_index = spr_player_idle_back;
    }
}
    
// Move the player
phy_position_x += hspd;
phy_position_y += vspd;