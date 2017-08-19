draw_sprite_ext(spr_bow,0,Player.x,Player.y-6,1+bow_power,1,global.aim_dir,c_white,1);

if (global.attack_button) {
	var color=c_white;
	if (bow_power == 1) color=c_lime;

	crosshair_dir_1 = global.aim_dir + 30 * (1-bow_power);
	crosshair_x_1 = x + lengthdir_x(18,crosshair_dir_1);
	crosshair_y_1 = y + lengthdir_y(18,crosshair_dir_1);
	draw_sprite_ext(spr_bow_crosshair,0,crosshair_x_1,crosshair_y_1,1,1,crosshair_dir_1,color,1);

	crosshair_dir_2 = global.aim_dir - 30 * (1-bow_power);
	crosshair_x_2 = x + lengthdir_x(18,crosshair_dir_2);
	crosshair_y_2 = y + lengthdir_y(18,crosshair_dir_2);
	draw_sprite_ext(spr_bow_crosshair,0,crosshair_x_2,crosshair_y_2,1,-1,crosshair_dir_2,color,1);
}