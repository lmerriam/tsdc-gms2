if (global.attack_button and scr_alarm_passed(attack_timer)) {
	var spd = 10;
	var hspd = lengthdir_x(spd,global.aim_dir);
	var vspd = lengthdir_y(spd,global.aim_dir);

	var spear = instance_create_layer(x,y,"entities",Attack_Spear);
	spear.phy_speed_x = hspd;
	spear.phy_speed_y = vspd;
	spear.phy_rotation = -global.aim_dir;
	spear.damage = scr_player_stat("Damage");
	attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
}