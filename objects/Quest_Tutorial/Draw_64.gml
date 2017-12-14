switch phase {
	case "left stick":
		draw_set_halign(fa_center);
		draw_text(global.window_width/4,global.window_height-128,"Drag on the left side of the screen to move.");
		draw_set_halign(fa_left);
		//draw_set_alpha(0.5);
		//draw_rectangle_color(global.window_width/2,0,global.window_width,global.window_height,c_black,c_black,c_black,c_black,false);
		//draw_set_alpha(1);
		draw_sprite_stretched(spr_tutorial_leftstick,image_index,global.window_width/4-128,global.window_height*.25,256,256);
		break;
		

	//case "pick up weapon":
	//	if (global.current_menu == "HUD") {
	//		draw_set_halign(fa_center);
	//		draw_text(global.window_width/2,global.window_height-128,"Pick up the weapon");
	//		draw_set_halign(fa_left);
	//	}
	//	break;
		
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
	
	case "right stick":
		draw_set_halign(fa_center);
		draw_text(global.window_width*0.75,global.window_height-128,"Drag on the right side of the screen to aim.");
		draw_set_halign(fa_left);
		//draw_set_alpha(0.5);
		//draw_rectangle_color(0,0,global.window_width/2,global.window_height,c_black,c_black,c_black,c_black,false);
		//draw_set_alpha(1);
		draw_sprite_stretched(spr_tutorial_leftstick,image_index,global.window_width*.75-128,global.window_height*.25,256,256);
		break;
		
	case "bang door":
		break;
}