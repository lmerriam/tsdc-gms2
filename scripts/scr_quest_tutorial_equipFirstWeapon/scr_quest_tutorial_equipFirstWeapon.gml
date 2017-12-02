var event_args = argument0;
var observer_args = argument1;

if (event_args[0] == Quest_Tutorial.creator) {
	Quest_Tutorial.phase = "close inventory";
	return true;
} else {
	return false;
}