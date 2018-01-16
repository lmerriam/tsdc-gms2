if (current_quest != noone) {
	var target = current_quest[? "Target"];
	if (target != noone) {
		scr_draw_quest_pointer(target.x,target.y);
	}
}