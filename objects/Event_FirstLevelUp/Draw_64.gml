switch phase {

	case "open character panel":
		if (global.current_menu = "HUD") draw_sprite_stretched(spr_tutorial_inventory,Time.now mod (2*room_speed) / room_speed,96,96,128,128);
		if ((global.current_menu != "HUD") and (global.current_menu != "Character")) draw_sprite_stretched(spr_tutorial_inventory,0,GUI.char_btn[0]+GUI.tab_width/2,GUI.tab_height+4,128,128);
		break;
	
	case "assign points":
		// Highlight the skill points and tell the player about them
		draw_rectangle(GUI.stat_list_x-64,GUI.stat_list_y+32,GUI.stat_list_x-8,GUI.stat_list_y+320,true);
		draw_text(64,global.window_height-64,"Upgrade your stats now");
		break;
		
}