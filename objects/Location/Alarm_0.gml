/// Check for player near

//scr_debug_map(stats);

if (stats[? "Discovered"] == false and distance_to_object(Player) < 600) {
    stats[? "Discovered"] = true;
    scr_announce("Discovered " + stats[? "Name"],id);
    alarm[0] = -1;
} else {
    alarm[0] = 0.5 * room_speed;
}

