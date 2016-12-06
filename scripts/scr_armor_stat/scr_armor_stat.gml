/// scr_armor_stat("stat name")
var stat_name = argument0;
var result = scr_get_armor().stats[? stat_name];

if (is_undefined(result)) {
    show_debug_message("Stat undefined");
    return 0;
} else {
    return result;
}
