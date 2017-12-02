switch phase {

	case "pick up weapon":
		draw_set_halign(fa_center);
		draw_text(global.window_width/2,global.window_height-128,"Pick up the weapon");
		draw_set_halign(fa_left);
		break;
		
	case "open inventory":
		draw_sprite_stretched(spr_tutorial_inventory,0,96,96,128,128);
		break;
		
	case "select weapon":
		break;
		
	case "equip weapon":
		break;
		
	case "close inventory":
		break;
		
	case "bang door":
		break;
}