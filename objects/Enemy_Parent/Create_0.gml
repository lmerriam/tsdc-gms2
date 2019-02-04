/// Trigger init alarm
event_inherited();
bleeds = true;

damaged_by = ds_list_create();
ds_list_add(damaged_by,Prop_Parent,Player);

quest_icon = spr_quest_icon_enemy;

mob = noone;
spawner = noone;
spawn_x = x;
spawn_y = y;
percent = 1;
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

// Create path
path = path_add();