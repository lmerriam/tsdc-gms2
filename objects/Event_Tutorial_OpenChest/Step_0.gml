switch phase {
	
	case "waiting for chest":
		nearest_chest = instance_nearest(Player.x,Player.y,Chest);
		if (point_distance(nearest_chest.x,nearest_chest.y,Player.x,Player.y) < 128) {
			phase = "open chest";
			scr_menu_dialog(spr_npc_idle,global.all_dialog[? "intro chest discovered"]);
			}
		break;
	
	case "open chest":
		if (!instance_exists(nearest_chest)) {
			scr_menu_dialog(spr_npc_idle,global.all_dialog[? "intro chest opened"]);
			instance_destroy();
		}
		break;
	
}

//show_debug_message(phase);
properties[? "Phase"] = phase;