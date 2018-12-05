/// Detect the Inventory slot the mouse is over and store it

// Check navigation submenu
scr_menu_navigation_step();

// Get list props
scr_ui_list_step(ui_list_player_inv);


if gui_mouse_released_click {
	
	var inv_list = ui_list_player_inv;
	var inv_item_selected = inv_list[? "selected item"];
	
	// Get inventory list coordinates
	if inv_list[? "event item selected"] {
		inv_current_equippable = global.equipment_slots[? inventory_current] ? true : false;
	}
	
	// Inventory tab switching
	if scr_mouse_over_ui(inv_tab_x1,inv_tab_y1,inv_tab_x2,inv_tab_y2) {
		var height = gui_mouse_y - inv_tab_y1;
		var i = floor(height/inv_tab_size);
		var inv_props = inventory_props[| i];
		inventory_current = inv_props[? "type"];
		inv_list[? "list"] = global.inventory[? inventory_current];
		inv_list[? "selected item"] = noone;
		
	// Equip button
	} else if inv_item_selected and inv_current_equippable and scr_mouse_over_ui(inv_equip_btn_x1,inv_equip_btn_y1,inv_equip_btn_x2,inv_equip_btn_y2) {
		if scr_equip(inv_item_selected) {
			var inv = global.inventory[? inventory_current];
			var pos = ds_list_find_index(inv,inv_item_selected);
			ds_list_delete(inv,pos);
		}
		inv_list[? "selected item"] = noone;
	}
	
}