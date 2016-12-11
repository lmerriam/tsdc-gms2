/// scr_handle_deactivation

// Deactivate all instances
instance_deactivate_all(true);
scr_activate_onscreen_instances();

// Var in create event so we don't have to get the ID each time
instance_activate_layer(lyr_game_objects);