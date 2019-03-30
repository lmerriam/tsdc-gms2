/// @description Insert description here
// You can write your code in this editor
show_debug_message("Toggling viewport");
if view_enabled {
	view_visible[0] = false;
	view_enabled = false;
} else {
	view_visible[1] = true;
	view_enabled = true;
}