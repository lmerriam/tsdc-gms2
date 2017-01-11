///scr_send_to_inv(id)
var item_props = argument[0];

// Find an inventory slot
var space = false;
var slots = global.inventory_slots;

// Get the inventory height and width
var grid_width = ds_grid_width(global.inventory_slots);
var grid_height = ds_grid_height(global.inventory_slots);

for (row = 0; row < grid_height; row++) {
    for (column = 0; column < grid_width; column++) {
        if (slots[# column,row] = noone) {
			var props = ds_map_create();
            // Assign to cell
			ds_map_copy(props,item_props);
			props[? "Stats"] = ds_map_create();
			ds_map_copy(props[? "Stats"],item_props[? "Stats"]);
			props[? "Buffs"] = ds_map_create();
			ds_map_copy(props[? "Buffs"],item_props[? "Buffs"]);
			props[? "Text"] = ds_map_create();
			ds_map_copy(props[? "Text"],item_props[? "Text"]);
            slots[# column,row] = props;
            
            // Return the fact that a slot was found
            space = true;
            return space;
        }
    }
}

if (space = false) show_message("No room in inventory");
return space;