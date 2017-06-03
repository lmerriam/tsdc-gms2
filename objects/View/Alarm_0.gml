/// Screen shake decay
if (global.screen_shake > 0) {
    global.screen_shake -= 3;
} else {
	global.screen_shake = 0;
}

alarm[0] = .4 * room_speed;

