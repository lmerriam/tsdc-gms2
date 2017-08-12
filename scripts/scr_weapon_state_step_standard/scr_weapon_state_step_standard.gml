var facing = 1;
if global.aimdir > 90 and global.aimdir < 270 {facing = -1};

global.weapon_origin_y = Player.y - 6;
global.weapon_origin_x = Player.x + facing*4;
global.weapondir = point_direction(global.weapon_origin_x,global.weapon_origin_y,mouse_x,mouse_y);

if (Player.attack_button and scr_alarm_passed(Player.attack_timer)) {
	
	//show_debug_message("Firing");
	var weapon = scr_get_weapon();
	if (weapon!=noone) {
		script_execute(weapon[? "Attack Script"]);
		Player.attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
	}
}