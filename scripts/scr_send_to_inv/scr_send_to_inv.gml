///scr_send_to_inv(props,inventory)
/// @param properties

var item_props = argument0;

// Figure out correct inventory
var item_type = item_props[? "Type"];
var inventory = global.inventory[? item_type];
			
// Copy props into new slot
//var item_props = scr_copy_drop_props(item_props);
ds_list_add(inventory,item_props);
			
// Fire send_to_inv event
//script_execute(event_send_to_inv);
//scr_event_send("send to inv",item_props);
scr_event_emit("send to inv",item_props);
            
// Return the fact that a slot was found
return true;
			
