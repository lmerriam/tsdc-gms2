var facing = 1;
if global.aim_dir > 90 and global.aim_dir < 270 {facing = -1};

global.weapon_origin_y = Player.y - 6;
global.weapon_origin_x = Player.x + facing*4;

if (global.attack_button and scr_alarm_passed(Player.attack_timer)) {
	
	//show_debug_message("Firing");
	var weapon = scr_get_weapon();
	if (weapon!=noone) {
		show_debug_message(weapon[? "Attack Script"]);
		script_execute(asset_get_index(weapon[? "Attack Script"]));
		Player.attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
	}
}