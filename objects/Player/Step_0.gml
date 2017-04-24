/// Control stats
//scr_calc_stats();

// Health
if (stats[? "Health"] < 0) {
    stats[? "Health"] = 0;
}

// Stamina regen
if (stats[? "Stamina"] < stats[? "Max Stamina"] and scr_alarm_passed(stamina_timer)) {
    stats[? "Stamina"] += stats[? "Stamina Regen"];
    stamina_timer = scr_sec_from_now(1);
}

/// Control player
event_inherited();
scr_get_input();

var len;
var dir;

global.player_x = x;
global.player_y = y;

attack_button = false;
spell_button = false;

// TODO: make this part of Player state
if (!global.cast_mode) {

    if (os_type == os_android) {
        
        if (device_mouse_check_button(0,mb_left)) {
            
            var move_device;
            var aim_device;
            
            // Figure out move and aim touches based on the side of the
            // screen the first touch occurs on
            if (device_mouse_x_to_gui(0) < global.window_width/2) {
                move_device = 0;
                aim_device = 1;
            } else {
                move_device = 1;
                aim_device = 0;
            }
            
            // Get the coordinates of the current move device
            var move_device_x = device_mouse_x_to_gui(move_device);
            var move_device_y = device_mouse_y_to_gui(move_device);
            
            // Get the coordinates of the aim device
            var aim_device_x = device_mouse_x_to_gui(aim_device);
            var aim_device_y = device_mouse_y_to_gui(aim_device);
            
            // If the move touch started this frame, set the move origin
            if (device_mouse_check_button_pressed(move_device,mb_left)) {
                move_origin_x = move_device_x;
                move_origin_y = move_device_y;
            }
            // If the aim touch started this frame, set the aim origin
            if (device_mouse_check_button_pressed(aim_device,mb_left)) {
                aim_origin_x = aim_device_x;
                aim_origin_y = aim_device_y;
            }
            
            // Get the length if the move device is active
            if (device_mouse_check_button(move_device,mb_left)) {
                len = clamp(point_distance(move_origin_x,move_origin_y,move_device_x,move_device_y),0,stats[? "Speed"]);
                dir = point_direction(move_origin_x,move_origin_y,move_device_x,move_device_y);
                global.mousedir = dir;
            } else {
                len = 0;
                dir = 0;
            }
            
            // Get the mouse direction if the aim device is active
            if (device_mouse_check_button(aim_device,mb_left) and point_distance(aim_origin_x, aim_origin_y, aim_device_x, aim_device_y) > 16) {
                global.mousedir = point_direction(aim_origin_x, aim_origin_y, aim_device_x, aim_device_y);
                attack_button = true;
            }
            
            if (device_mouse_check_button(aim_device,mb_right)) {
                spell_button = true;
            }
            
        } else {
            len = 0;
            dir = 0;
        }
        
    } else {
        //Get mousedir
        global.mousedir = point_direction(x, y, mouse_x, mouse_y);
        
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
    if (global.mousedir > 90 and global.mousedir < 270) orientation = -1 else orientation = 1;
    if (global.mousedir < 135 and global.mousedir > 45) front = false else front = true;
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
    
    // Left Attack
    if (attack_button and scr_alarm_passed(attack_timer)) {
		var weapon = scr_get_weapon();
		if (weapon!=noone) {
			script_execute(weapon[? "Attack Script"]);
			attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
		}
    }
    
    // Right attack
	var spell = scr_get_spell();
    if (spell_button and stats[? "Stamina"] >= scr_spell_stat("Fatigue") and scr_alarm_passed(spell_timer)) {
		if (spell != noone) {
			var spell_stats = spell[? "Stats"];
			script_execute(spell[? "Spell Script"]);
	        stats[? "Stamina"] -= scr_spell_stat("Fatigue");
	        spell_timer = scr_sec_from_now(scr_spell_stat("Cooldown"));
		}
    }

}

/// Teleport player
if (global.teleport_player_x != noone) {
    scr_move_player(global.teleport_player_x,global.teleport_player_y);
    global.teleport_player_x = noone;
    global.teleport_player_y = noone;
}
