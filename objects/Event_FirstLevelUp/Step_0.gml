switch phase {
	
	case "start":
		if (scr_player_base_stat("Level") > 1) phase = "open character panel";	
		break;
	
	case "open character panel":
		if (global.current_menu == "Character") phase = "assign points";
		break;
	
	case "assign points":
		if (global.current_menu == "HUD") phase = "waiting for chest";
		break;
	
	case "waiting for chest":
		nearest_chest = instance_nearest(Player.x,Player.y,Chest);
		if (point_distance(nearest_chest.x,nearest_chest.y,Player.x,Player.y) < 128) phase = "open chest";
		break;
	
	case "open chest":
		if (!instance_exists(nearest_chest)) phase = "waiting for stronghold";
		break;
	
	case "waiting for stronghold":
		nearest_stronghold = instance_nearest(Player.x, Player.y, Stronghold_Parent);
		if (point_distance(nearest_stronghold.x,nearest_stronghold.y,Player.x,Player.y) < 128) phase = "defeat stronghold";
		break;
	
	case "defeat stronghold":
		//if (!instance_exists(stronghold_inst)) phase = "
		break;
}

//show_debug_message(phase);
properties[? "Phase"] = phase;