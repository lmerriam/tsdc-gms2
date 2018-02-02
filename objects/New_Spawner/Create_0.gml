scr_register_location(id);

max_enemies = 8;
current_enemies = 0;
spawn_timer = 0;

trigger_range = 128;
flee_range = 256;

enemies_base = ds_list_create();

var jumpers = ds_map_create();
ds_list_add(enemies_base,jumpers);
jumpers[? "Object"] = Jumper;
jumpers[? "Quantity"] = 15;
//scr_add_enemy_to_stronghold(Jumper,15);

var slimes = ds_map_create();
ds_list_add(enemies_base,slimes);
slimes[? "Object"] = Slime;
slimes[? "Quantity"] = 10;

var boss = ds_map_create();
ds_list_add(enemies_base,boss);
boss[? "Object"] = Enemy_Boss_Slime;
boss[? "Quantity"] = 1;

enemies = ds_list_create();
ds_list_copy(enemies,enemies_base);
var size = ds_list_size(enemies_base);
for (var i = 0; i<size; i++) {
	enemies[| i] = ds_map_create();
	ds_map_copy(enemies[| i],enemies_base[| i]);
}