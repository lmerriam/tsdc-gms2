/// scr_player_base_stat("stat name")
var stat_name = argument0;

var result = Player.base_stats[? stat_name];

if (is_undefined(result)) {
    //show_debug_message("Player base stat " + string(stat_name) +" undefined");
    return 0;
} else {
    return result;
}
