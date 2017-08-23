if (global.attack_button and scr_alarm_passed(attack_timer)) {
	var aim_variation = 20;
	var flame = instance_create_layer(x,y,"entities",Attack_Flamethrower);
	var dir = global.aim_dir + random_range(-aim_variation,aim_variation);
	
	var spd = 2;
	flame.phy_speed_x = lengthdir_x(spd,dir) + global.player_speed_x;
	flame.phy_speed_y = lengthdir_y(spd,dir) + global.player_speed_y;
	flame.damage = scr_player_stat("Damage");
	attack_timer = scr_sec_from_now(.05);
}