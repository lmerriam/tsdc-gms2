switch phase {

	case "pick up weapon":
		if (instance_exists(creator) == false) {
			phase = "open inventory";
			scr_menu_dialog(spr_player,global.all_dialog[? "intro 3"]);
		}
		break;
		
	case "open inventory":
		if (global.current_menu = "Inventory") phase = "select weapon";
		break;
		
	case "select weapon":
		if (global.current_menu != "Inventory") phase = "open inventory";
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
		if (global.current_menu == "HUD") {
			phase = "bang door 1";
			bang_door = scr_sec_from_now(1);
		}
		break;
		
	case "bang door 1":
		if (scr_alarm_passed(bang_door)) {
			scr_announce("Bang 1!",noone);
			phase = "bang door 2";
			bang_door = scr_sec_from_now(1);
		}
		break;
		
	case "bang door 2":
		if (scr_alarm_passed(bang_door)) {
			scr_announce("Bang 2!",noone);
			phase = "spawn baddies";
			spawn_baddies = scr_sec_from_now(1);
		}
		break;
		
	case "spawn baddies":
		if (scr_alarm_passed(spawn_baddies)) {
			repeat(3){
				var inst = instance_create_layer(Door.x,Door.y,"entities",Slime);
				inst.state = scr_enemy_chase_state;
			};
			phase = "kill enemies";
		}
		break;
		
	case "kill enemies":
		if (!instance_exists(Slime)) {
			scr_menu_dialog(spr_player,global.all_dialog[? "intro 6"]);
			phase = "exit tutorial room";
		}
		break;
		
}

show_debug_message(phase);