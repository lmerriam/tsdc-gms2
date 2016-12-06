/// scr_handle_deactivation

// Deactivate all instances
instance_deactivate_all(true);

// Activate menu object (or all onscreen objects if no menu is up)
if (global.current_menu != noone) {
    for (i=0; i<ds_list_size(global.current_menu);i++) {
        instance_activate_object(global.current_menu[| i]);
    }
    switch global.current_menu {
        case global.menu_store:
        case global.menu_inventory:
            scr_activate_inv();
        case global.menu_map:
            scr_activate_map();            
    }
} else {
    scr_activate_onscreen_instances();
}
