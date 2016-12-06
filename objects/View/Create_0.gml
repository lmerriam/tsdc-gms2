/// Set up the view
display_set_gui_size(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
global.window_width = __view_get( e__VW.WPort, 0 );
global.window_height = __view_get( e__VW.HPort, 0 );
//surface_resize(application_surface, view_wview[0], view_hview[0]);
//application_surface_enable(false);
// Set GUI size

screen_scale = 1;
prev_screen_scale = screen_scale;

instance_create(-999,-999,Inventory);
instance_create(-999,-999,Map);
instance_deactivate_object(Menu_Parent);

/// Move to player
if (instance_exists(Player)) {
    x = Player.x;
    y = Player.y;
}

global.screen_shake = 0;

// Get the screen shake decay going
alarm[0] = 1;
alarm[1] = 1;

/// Init menus

// Inventory
global.menu_inventory = ds_list_create();
ds_list_add(global.menu_inventory, Menu_Navigation, Inventory);

// Map
global.menu_map = ds_list_create();
ds_list_add(global.menu_map, Map, Menu_Navigation);

// Cast mode
global.menu_cast_mode = ds_list_create();
ds_list_add(global.menu_cast_mode, Cast_Mode);

// Store
instance_create(-999,-999,Store);
global.menu_store = ds_list_create();
ds_list_add(global.menu_store, Store);

// Character
global.menu_character = ds_list_create();

// Settings
global.menu_settings = ds_list_create();

// Create navigation submenu
instance_create(-999,-999,Menu_Navigation);

// Set initial current menu
global.current_menu = noone;

