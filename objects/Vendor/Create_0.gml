/// Set up inv
vendor_inv = ds_grid_create(3,5);
ds_grid_clear(vendor_inv,noone);

// Some test inventory
var item = instance_create(0,0,Weapon_Shotgun);
vendor_inv[# 0,0] = scr_copy_drop_props(item.properties);
instance_destroy(item);