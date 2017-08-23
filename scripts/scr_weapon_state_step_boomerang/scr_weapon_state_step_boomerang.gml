if (global.attack_button and has_boomerang) {
	var hspd = lengthdir_x(10,global.aim_dir);
	var vspd = lengthdir_y(10,global.aim_dir);
	var boomerang = instance_create_layer(x+hspd,y+vspd,"entities",Attack_Boomerang);
	boomerang.phy_speed_x = hspd + global.player_speed_x;
	boomerang.phy_speed_y = vspd + global.player_speed_y;
	boomerang.damage = scr_player_stat("Damage");
}