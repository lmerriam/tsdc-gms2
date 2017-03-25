/// Check discovery
event_inherited();
var discovered = properties[? "Discovered"];
if(!discovered and distance_to_object(Player)<16) {
	properties[? "Discovered"] = true;
}