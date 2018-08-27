/// @description Insert description here

mob = instance_create_layer(x,y,"entities",Quest_Mob);
mob.creator = id;

targets = ds_list_create();
ds_list_add(targets,mob);