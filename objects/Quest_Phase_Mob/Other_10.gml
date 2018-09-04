/// @description Insert description here

// If this phase has never been instantiated

// If this phase has been instantiated

mob = instance_create_layer(x,y,"entities",Mob);
//mob.creator = id;

targets = ds_list_create();
ds_list_add(targets,mob);

var args = ds_map_create();
args[? "mob"] = mob;
args[? "quest id"] = quest_id;
args[? "phase number"] = phase_number;
args[? "phase inst"] = id;
scr_observer_register("mob defeated",scr_observer_questMobDefeated,args);
scr_observer_register("mob spawned",scr_observer_questMobSpawned,args);