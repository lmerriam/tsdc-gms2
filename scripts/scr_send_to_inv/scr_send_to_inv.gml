///scr_send_to_inv(props,inventory)
/// @param properties

var item_props = argument0;
var item_name = item_props[? "Name"];

// Figure out correct inventory
var item_type = item_props[? "Type"];
var inventory = global.inventory[? item_type];
var inv_props = scr_inv_get_props(item_type);
var stackable = inv_props[? "stackable"];
var item_existing = scr_inventory_check_item_exists(item_name);

// Copy props into new slot
//var item_props = scr_copy_drop_props(item_props);
if (stackable and item_existing) {
	var quantity = item_existing[? "Quantity"];
	if (quantity) item_existing[? "Quantity"]++ else item_existing[? "Quantity"] = 2;
} else {
	ds_list_add(inventory,item_props);
}
			
// Fire send_to_inv event
//script_execute(event_send_to_inv);
//scr_event_send("send to inv",item_props);
scr_event_emit("send to inv",item_props);
            
// Return the fact that a slot was found
return true;
			
