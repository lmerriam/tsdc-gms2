///scr_activate_inv()

for (column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (row = 0; row < ds_grid_height(global.inventory_slots); row++) {
        instance_activate_object(global.inventory_slots[# column,row]);
    }
}
instance_activate_object(scr_get_weapon());
instance_activate_object(scr_get_spell());
instance_activate_object(scr_get_armor());
instance_activate_object(scr_get_gem());
