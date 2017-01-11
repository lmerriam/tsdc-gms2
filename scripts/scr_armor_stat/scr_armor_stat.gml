/// scr_armor_stat("stat name")
var stat_name = argument0;
var props = scr_get_armor();
var stats = props[? "Stats"];
var result = stats[? stat_name];

if (is_undefined(result)) {
    show_debug_message("Stat undefined");
    return 0;
} else {
    return result;
}
