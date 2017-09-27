bow_sprite = 0;
var bow_dur = 0;
bow_power = 0;
if (scr_alarm_passed(attack_timer)) {
	if (global.attack_button_pressed) {
		bow_start_time = Time.now;
	}
	if (global.attack_button) {
		bow_dur = scr_sec_since(bow_start_time);
		bow_power = clamp(bow_dur,0,1)/1;
	}
	if (global.attack_button_released) {
		bow_dur = scr_sec_since(bow_start_time);
		bow_power = clamp(bow_dur,0,1)/1;
		var arrow = instance_create_layer(x,y,"entities",Attack_Arrow);
		var hspd = lengthdir_x(clamp(10*bow_power,2,10),global.aim_dir);
		var vspd = lengthdir_y(clamp(10*bow_power,2,10),global.aim_dir);
		arrow.phy_speed_x = hspd;
		arrow.phy_speed_y = vspd;
		arrow.phy_rotation = -global.aim_dir;
		arrow.damage = 20*bow_power;
		if (bow_dur < .2) attack_timer = scr_sec_from_now(.5);
	}
}