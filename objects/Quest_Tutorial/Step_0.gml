switch phase {

	case "pick up weapon":
		if (instance_exists(creator) == false) phase = "open inventory";
		break;
		
	case "open inventory":
		if (GUI.menu_step == scr_menu_inv_step) phase = "select weapon";
		break;
		
	case "select weapon":
		if (GUI.selected_item != noone and GUI.selected_item[? "ID"] == quest_weapon_id) phase = "equip weapon";
		break;
		
	case "equip weapon":
		if (GUI.selected_item == noone) {
			phase = "select weapon";
			scr_observer_register("equip item", scr_quest_tutorial_equipFirstWeapon, true, creator);
		}
		var equipped = scr_get_weapon();
		if (equipped[? "ID"] == quest_weapon_id) phase = "close inventory";
		break;
		
	case "close inventory":
		if (GUI.menu_step == scr_menu_hud_step) phase = "bang door";
		break;
		
	case "bang door":
		break;
}

show_debug_message(phase);