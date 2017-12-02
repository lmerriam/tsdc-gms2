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