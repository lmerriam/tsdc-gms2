///scr_debug_2d_array(array)
var array = argument0;

// Iterate through the list
for(var row = 0; row<array_height_2d(array); row++) {
    
    for (var col = 0; col<array_length_2d(array,row); col++) {
        show_debug_message("Row " + string(row) + string(array[col,row]));
    }
}
