/// Check HUD taps
x = Player.x;
y = Player.y;

__view_set( e__VW.XView, 1, Player.x - __view_get( e__VW.WView, 1 )/2 );
__view_set( e__VW.YView, 1, Player.y - __view_get( e__VW.HView, 1 )/2 );

if (!global.cast_mode) {
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
}

