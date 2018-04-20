/// Move view toward player

if (instance_exists(Player)) {
    var dis;
    if (global.cast_mode) {
        x += (Player.x - x) * .5;
        y += (Player.y - y) * .5;
    } else {
        if (os_type = os_android) {
            dis = 128;
        } else {
            dis = point_distance(Player.x,Player.y,mouse_x,mouse_y);
        }
        var targetx = global.weapon_origin_x + lengthdir_x(dis/5,global.aim_dir);
        var targety = global.weapon_origin_y + lengthdir_y(dis/5,global.aim_dir);

        global.crosshair_x = targetx;
        global.crosshair_y = targety;

        x += (targetx - x) * .2  * (30/room_speed);
        y += (targety - y) * .2 * (30/room_speed);
    }
}

if (global.screen_shake > 2) {
    if (global.screen_shake > 10) global.screen_shake = 10;
    x += choose(-random(global.screen_shake),random(global.screen_shake)) * (30/room_speed);
    y += choose(-random(global.screen_shake),random(global.screen_shake)) * (30/room_speed);
}

/// In cast mode, get larger

if (global.cast_mode) {
   if (screen_scale < 1.2) screen_scale += .05;
} else {
   if (screen_scale > 1) screen_scale -= .05;
}

// Scale the view if the screen scale has changed
if (prev_screen_scale != screen_scale) scr_scale_view(screen_scale*320,screen_scale*180);

prev_screen_scale = screen_scale;
