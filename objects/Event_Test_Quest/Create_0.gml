event_inherited();
//phase = "find chest";

//chest = instance_create_layer(x-600,y+600,"entities",Chest);
//instance_create_layer(chest.x,chest.y,"entities",Enemy_Spawner);

//scr_init_quest("Test Quest","Test Quest",chest,true);

phases = ds_list_create();

var current_phase = phase[| 0];