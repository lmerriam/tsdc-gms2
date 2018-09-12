//scr_register_location(id,spr_location);

enemies = ds_list_create();
spawn_timer = 0;

spawn_points = ds_list_create();

spawns = ds_list_create();
repeat(enemy_1_count) ds_list_add(spawns,enemy_1);
repeat(enemy_2_count) ds_list_add(spawns,enemy_2);
repeat(enemy_3_count) ds_list_add(spawns,enemy_3);

ds_list_shuffle(spawns);