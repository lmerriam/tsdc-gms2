///scr_debug_list(ds_list)
var list = argument0;

// Iterate through the list
for(var i = 0; i<ds_list_size(list); i++) {
    
    // Print the key/value pair
    show_debug_message(list[| i]);
    if (ds_exists(list[| i],ds_type_map)) {
        show_debug_message("/// NESTED MAP///");
        scr_debug_map(list[| i]);
        show_debug_message("/////////////////");
    }
}
