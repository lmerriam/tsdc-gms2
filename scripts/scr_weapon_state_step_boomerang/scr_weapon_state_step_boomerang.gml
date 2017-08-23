if (global.attack_button and has_boomerang) {
	var hspd = lengthdir_x(6,global.aim_dir);
	var vspd = lengthdir_y(6,global.aim_dir);
	var boomerang = instance_create_layer(x+hspd,y+vspd,"entities",Attack_Boomerang);
	boomerang.phy_speed_x = hspd;
	boomerang.phy_speed_y = vspd;
}