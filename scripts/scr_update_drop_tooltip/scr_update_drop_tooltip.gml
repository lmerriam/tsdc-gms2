///scr_update_drop_tooltip()

text[0,0] = string(name);
text[0,1] = "";
text[0,2] = c_white;

text[1,0] = "Level " + string(stats[? "Level"]);
text[1,1] = "";
text[1,2] = c_white;

// Iterate through the stats
var map = stats;
var current_key = ds_map_find_first(map);
var size = ds_map_size(map);
var level_encountered_modifier = 1;
for(var i = 0; i<ds_map_size(map); i++) {
    //scr_debug_2d_array(text);
    var xx = 1+level_encountered_modifier+i;
    //show_debug_message(string(xx) + " " + string(i));
    if (current_key != "Level") {
        text[xx,0] = string(current_key) + ": " + string(map[? current_key]);
        text[xx,1] = "";
        text[xx,2] = c_white;
    } else {
        level_encountered_modifier = 0;
    }
    
    // Increment the current ds_map key
    current_key = ds_map_find_next(map, current_key);
}
