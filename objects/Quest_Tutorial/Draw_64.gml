switch phase {

	case "pick up weapon":
		draw_set_halign(fa_center);
		draw_text(global.window_width/2,global.window_height-128,"Pick up the weapon");
		draw_set_halign(fa_left);
		break;
		
	case "open inventory":
		if (global.current_menu = "HUD") draw_sprite_stretched(spr_tutorial_inventory,Time.now mod (2*room_speed) / room_speed,96,96,128,128);
		break;
		
	case "select weapon":
		break;
		
	case "equip weapon":
		var xx = GUI.eqp_btn_x1 + 64;
		var yy = GUI.eqp_btn_y2;
		if (GUI.selected_item[? "ID"] == quest_weapon_id) draw_sprite_ext(spr_tutorial_inventory,0,xx,yy,1,1,-45,c_white,1);
		break;
		
	case "close inventory":
		break;
		
	case "bang door":
		break;
}