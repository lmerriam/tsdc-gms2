///scr_update_drop_tooltip(properties_id)
var props = argument0;
var stats = props[? "Stats"]
var buffs = props[? "Buffs"]

var name = props[? "Name"];
var type = props[? "Type"];
var level = stats[? "Level"];
var text = props[? "Text"];

// Identify the equipped item to compare to
var equipped_item;
var equipped_item_stat;
switch(type) {
	case "Weapon":
		equipped_item = scr_get_weapon();
		break;
	case "Scroll":
		equipped_item = scr_get_spell();
		break;
	case "Gem":
		equipped_item = scr_get_gem();
		break;
	case "Armor":
		equipped_item = scr_get_armor();
		break;
	default:
		show_message("Can't identify item type for inv tooltip");
}
var equipped_stats = equipped_item[? "Stats"];

// Set the name
text[# 0,0] = string(name);
text[# 0,1] = "";
text[# 0,2] = c_white;

// Iterate through the stats
var current_key = ds_map_find_first(stats);
var size = ds_map_size(stats);

// Because we already set up the name, the index for this loop needs to start at 1
for(var line = 1; line<=size; line++) {

	//var compare = scr_compare_to_equipped();
	
    text[# line,0] = current_key + ": " + string(stats[? "current_key"]);
    text[# line,1] = "";
    text[# line,2] = c_white;

    
    // Increment the current ds_map key
    current_key = ds_map_find_next(stats, current_key);
}
