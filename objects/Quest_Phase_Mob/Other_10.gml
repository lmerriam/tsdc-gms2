/// @description Insert description here

mob = instance_create_layer(x,y,"entities",Quest_Mob);
mob.creator = id;

ds_list_destroy(targets);
targets = mob.enemies;