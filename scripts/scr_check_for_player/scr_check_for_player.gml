///scr_check_for_player
if (instance_exists(Player)) {
    var dis = point_distance(x,y,Player.x,Player.y);
    if (dis < sight) {
        state = scr_enemy_chase_state;
        targetx = Player.x;
        targety = Player.y;
    } else {
        scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}
