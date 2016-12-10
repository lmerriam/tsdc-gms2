/// Check HUD taps
x = Player.x;
y = Player.y;

__view_set( e__VW.XView, 1, Player.x - __view_get( e__VW.WView, 1 )/2 );
__view_set( e__VW.YView, 1, Player.y - __view_get( e__VW.HView, 1 )/2 );

// Check for nearest drop
nearest_drop = instance_nearest(x,y,Drop_Parent);
if (distance_to_object(nearest_drop) < 32) {
    nearest_drop_in_range = true;
    with(nearest_drop) {
        image_index = 1;
    }
} else {
    nearest_drop_in_range = false;   
}

// Handle mouse clicks
if (mouse_check_button_released(1)) {

	// Cast mode
    if (scr_check_btn(cast_btn)) {
        global.cast_mode = true;
        global.timescale = .1;
		scr_menu_castmode();
		
	// Inventory
    } else if (scr_check_btn(menu_btn)) {
        scr_menu_inv();
	
	// Map
    } else if (scr_check_btn(minimap_btn)) {
        scr_menu_map();
		
    // Detect pickup button click
    } else if (nearest_drop != noone and scr_check_btn(nearest_btn)) {
        scr_send_to_inv(nearest_drop);
    }
}