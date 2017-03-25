/// Draw the notifier

var discovered = properties[? "Discovered"];

if (!discovered) {
	draw_sprite(spr_alert,Time.now mod 80 div 10,x,y-32);
}

event_inherited();