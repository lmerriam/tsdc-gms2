switch phase {
	//case "pick up weapon":
	//	scr_draw_quest_pointer(quest_weapon.x, quest_weapon.y);
	//	break;
	
	case "talk to npc":
		draw_sprite(spr_alert,Time.now mod 80 div 10,NPC.x,NPC.y-32);
		break;
}