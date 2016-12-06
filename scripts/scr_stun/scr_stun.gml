///scr_stun(enemy_obj,duration)
var enemy = argument0;
var dur = argument1;

enemy.state = scr_enemy_stall_state;
enemy.stall_alarm = scr_sec_from_now(1.5);
