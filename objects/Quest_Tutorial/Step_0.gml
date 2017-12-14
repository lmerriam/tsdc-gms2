switch phase {
	
	case "unconscious":
		View.screen_scale += .005;
		if (View.screen_scale > 1) {
			View.screen_scale = 1;
			phase = "left stick";
		}
		scr_scale_view(View.screen_scale*320,View.screen_scale*180);
		break;
	
	case "left stick":
		if (global.player_speed_x > 0) phase = "talk to npc";
		break;
	
	case "talk to npc":
		if (global.current_menu == "Dialog") {
			quest_weapon = scr_spawn_equipment(32,room_height*.8,"Pistol");
			quest_weapon.properties[? "Name"] = "Rusty Pistol";
			quest_weapon_id = quest_weapon.properties[? "ID"];
			phase = "pick up weapon";
		};
		break;

	case "pick up weapon":
		if (instance_exists(quest_weapon) == false) {
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
			//scr_observer_register("equip item", scr_quest_tutorial_equipFirstWeapon, true, quest_weapon_id);
		}
		var equipped = scr_get_weapon();
		if (equipped != noone and equipped[? "ID"] == quest_weapon_id) phase = "close inventory";
		break;
		
	case "close inventory":
		if (global.current_menu == "HUD") {
			phase = "right stick";
		}
		break;
		
	case "right stick":
		if (global.attack_button) phase = "bang door 1";
		bang_door = scr_sec_from_now(1);
		break;
		
	case "bang door 1":
		if (scr_alarm_passed(bang_door)) {
			//scr_announce("Bang 1!",noone);
			phase = "bang door 2";
			bang_door = scr_sec_from_now(1);
			part_particles_create(global.particles_above,room_width/2,8,global.dustcloud_particles,1);
		}
		break;
		
	case "bang door 2":
		if (scr_alarm_passed(bang_door)) {
			//scr_announce("Bang 2!",noone);
			phase = "spawn baddies";
			spawn_baddies = scr_sec_from_now(1);
			part_particles_create(global.particles_above,room_width/2,8,global.dustcloud_particles,1);
		}
		break;
		
	case "spawn baddies":
		if (scr_alarm_passed(spawn_baddies)) {
			var door = instance_create_layer(room_width/2,0,"entities",Door);
			door.sprite_index = spr_dungeon_door_open;
			door.properties[? "New Room"] = rm_start;
			door.properties[? "New X"] = 128;
			door.properties[? "New Y"] = 128;
			part_particles_create(global.particles_above,room_width/2,8,global.dustcloud_particles,1);
			repeat(3){
				var inst = instance_create_layer(Door.x,Door.y+8,"entities",Slime);
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
properties[? "Phase"] = phase;