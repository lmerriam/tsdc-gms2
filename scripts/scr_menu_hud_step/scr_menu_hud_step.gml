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

// Check for nearest vendor
nearest_vendor = instance_nearest(x,y,Vendor);
if (distance_to_object(nearest_vendor) < 32) {
    nearest_vendor_in_range = true;
} else {
    nearest_vendor_in_range = false;   
}

// Check for combo
if (combo_timer == Time.now) {
	if (combo_count > 2) {
		var xp = combo_count * Player.base_stats[? "Level"];
		scr_announce("Combo bonus: " + string(xp),noone);
		repeat(xp) instance_create(Player.x + random_range(-16,16), Player.y + random_range(32,48), Expr);
	}
	combo_count = 0;
} else if (scr_alarm_running(combo_timer)) {
	combo_bar_percent = (combo_timer-Time.now)/(5*room_speed)*100;
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
    } else if (nearest_drop != noone and nearest_drop_in_range and scr_mouse_over_ui(nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2)) {
        scr_send_to_inv(nearest_drop.properties,global.inventory_slots);
		instance_destroy(nearest_drop);
		nearest_drop_in_range = false;
		nearest_drop = noone;
		
	// Detect vendor button click
    } else if (nearest_vendor != noone and nearest_vendor_in_range and scr_check_btn(shop_btn)) {
        scr_menu_shop(nearest_vendor);
    }
	
}

