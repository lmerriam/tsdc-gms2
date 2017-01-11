/// Draw creep count

// draw button status
if (instance_number(Enemy_Parent) == 0) {
    draw_set_color(c_green);
    draw_text(32, window_get_height() - 32, string_hash_to_newline("Wave complete!"));
} else {
    draw_set_color(c_red);
    draw_text(32, window_get_height() - 32, string_hash_to_newline("Creeps remaining: " + string(instance_number(Enemy_Parent))));
}

draw_set_color(c_white);

