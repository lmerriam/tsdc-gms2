// Find an inventory slot
var slots = global.inventory_slots;

// Get the inventory height and width
var grid_width = ds_grid_width(global.inventory_slots);
var grid_height = ds_grid_height(global.inventory_slots);

// Iterate through all slots and deposit item into first empty one
for (row = 0; row < grid_height; row++) {
    for (column = 0; column < grid_width; column++) {
        if (slots[# column,row] = noone) {
			
			// Copy props into new slot
            slots[# column,row] = scr_copy_drop_props(item_props);
            
            // Return the fact that a slot was found
            return true;
        }
    }
}