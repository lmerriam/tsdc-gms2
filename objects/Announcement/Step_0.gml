/// Fade announcement in and out

if (time_to_dismiss) {
    text_opacity -= 1/room_speed;
    if (text_opacity <= 0) {
        instance_destroy();
        exit;
    }
} else {
    text_opacity += 10/room_speed;
}

x = Player.x;
y = Player.y;

/// Set up pointer
if (creator != noone) {
    var len = 32;
    pointer_dir = point_direction(x,y,creator.x,creator.y);
    pointer_x = Player.x + lengthdir_x(len,pointer_dir);
    pointer_y = Player.y + lengthdir_y(len,pointer_dir);
}

