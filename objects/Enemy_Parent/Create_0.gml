/// Trigger init alarm
event_inherited();

spawn_x = x;
spawn_y = y;

// States
state = scr_enemy_idle_state;
wander_alarm = scr_sec_from_now(irandom_range(2,5));
stall_alarm = 0;
sight = 96;
targetx = 0;
targety = 0;

// Stats
stats[? "Level"] = 1;