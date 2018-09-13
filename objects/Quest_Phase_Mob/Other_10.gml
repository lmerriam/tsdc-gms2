/// @description Insert description here

mob = instance_create_layer(x,y,"entities",Mob);

targets = ds_list_create();
ds_list_add(targets,mob);

var args = ds_map_create();
//args[? "mob"] = mob;
args[? "quest id"] = quest_id;
args[? "phase number"] = phase_number;
//args[? "phase inst"] = id;
scr_observer_register("mob defeated",scr_observer_questMobDefeated,false,args);
scr_observer_register("mob spawned",scr_observer_questMobSpawned,false,args);