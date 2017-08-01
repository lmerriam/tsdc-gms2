/// scr_get_equipped(item_type)
var type = argument0;
var equipped_item;

switch(type) {
	case "Weapon":
		equipped_item = scr_get_weapon();
		break;
	case "Spell":
		equipped_item = scr_get_spell();
		break;
	case "Gem":
		equipped_item = scr_get_gem();
		break;
	case "Armor":
		equipped_item = scr_get_armor();
		break;
	default:
		show_debug_message("Can't identify item type for inv tooltip:" + string(type));
		return noone;
}

return equipped_item;