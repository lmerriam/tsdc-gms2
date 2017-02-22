/// scr_gem_stat("stat name")
var stat_name = argument0;
var gem = scr_get_gem();
var result = ds_map_find_value(gem[? "Stats"], stat_name);

if (is_undefined(result)) {
    show_debug_message("Stat undefined");
    return 0;
} else {
    return result;
}
