draw_self();
if (active_quest) {
	draw_sprite(spr_alert,Time.now mod 80 div 10,x,y-32);
}