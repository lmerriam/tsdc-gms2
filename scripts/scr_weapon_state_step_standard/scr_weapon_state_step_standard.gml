var facing = 1;
if global.aim_dir > 90 and global.aim_dir < 270 {facing = -1};

// Weapon position
// TODO: yeah this IF statement fuckin blows
global.weapon_origin_y = Player.y - 6;
if (Player.sprite_index == spr_player_running) {
	if (floor(Player.image_index) == 2 or floor(Player.image_index) == 6) {
		global.weapon_origin_y = Player.y - 5;
	}
}
global.weapon_origin_x = Player.x + facing*4;

if (global.attack_button and scr_alarm_passed(Player.attack_timer)) {
	var weapon = scr_get_weapon();
	if (weapon!=noone) {
		script_execute(asset_get_index(weapon[? "Attack Script"]));
		Player.attack_timer = scr_sec_from_now(scr_weapon_stat("Atk Delay"));
	}
}