/// Set up the view
display_set_gui_size(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
global.window_width = __view_get( e__VW.WPort, 0 );
global.window_height = __view_get( e__VW.HPort, 0 );
//surface_resize(application_surface, view_wview[0], view_hview[0]);
//application_surface_enable(false);
// Set GUI size

screen_scale = 1;
prev_screen_scale = screen_scale;


/// Move to player
if (instance_exists(Player)) {
    x = Player.x;
    y = Player.y;
}

global.screen_shake = 0;

// Get the screen shake decay going
alarm[0] = 1;
alarm[1] = 1;