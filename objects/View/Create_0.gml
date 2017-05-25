/// Set up the view
display_set_gui_size(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
global.window_width = __view_get( e__VW.WPort, 0 );
global.window_height = __view_get( e__VW.HPort, 0 );

// Set GUI size
screen_scale = 1;
prev_screen_scale = screen_scale;

/// Move to player
if (instance_exists(Player)) {
    x = Player.x;
    y = Player.y;
}

// Get the screen shake decay going
global.screen_shake = 0;
alarm[0] = 1;
alarm[1] = 1;