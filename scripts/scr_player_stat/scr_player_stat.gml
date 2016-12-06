/// scr_player_stat("stat name")
var stat_name = argument0;

var result = Player.stats[? stat_name];

if (is_undefined(result)) {
    //show_debug_message("Player stat " + string(stat_name) +" undefined");
    return 0;
} else {
    return result;
}
