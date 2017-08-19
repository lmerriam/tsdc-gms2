/// Trigger init alarm
event_inherited();

spawn_x = x;
spawn_y = y;
percent = 100;
base_image_speed = 1;
loot = ds_map_create();

// States
state = scr_enemy_idle_state;
wander_alarm = scr_sec_from_now(irandom_range(2,5));
stall_alarm = 0;
sight = 128;
targetx = 0;
targety = 0;

// Stats
stats[? "Level"] = 1;