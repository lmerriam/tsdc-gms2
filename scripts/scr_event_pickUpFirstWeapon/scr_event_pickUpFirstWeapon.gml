var event_props = argument0;
var obs_props = argument1;

if (obs_props == event_props) {
	scr_menu_dialog(spr_player,global.all_dialog[? "intro 3"]);
	return true;
} else { return false }