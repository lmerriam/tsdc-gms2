event_inherited();

state = scr_jumper_aim_state;
jump_alarm = scr_sec_from_now(2);

stats[? "Level"] = 1;
stats[? "Damage"] = 3;
stats[? "Max Health"] = 20;
stats[? "Health"] = stats[? "Max Health"];
stats[? "Experience"] = 3;
stats[? "Knockback"] = 5;
stats[? "Speed"] = 1 * (30/room_speed);