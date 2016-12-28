///scr_send_to_inv(id)
var inst = argument[0];

// Find an inventory slot
var space = false;
var slots = global.inventory_slots;

// Get the inventory height and width
var grid_width = ds_grid_width(global.inventory_slots);
var grid_height = ds_grid_height(global.inventory_slots);

for (row = 0; row < grid_height; row++) {
    for (column = 0; column < grid_width; column++) {
        if (slots[# column,row] = noone) {
            // Assign to cell
			var props = ds_map_create();
			ds_map_copy(props,inst.properties);
            slots[# column,row] = props;
            instance_destroy(inst);
            
            // Return the fact that a slot was found
            space = true;
            return space;
        }
    }
}

if (space = false) show_message("No room in inventory");
