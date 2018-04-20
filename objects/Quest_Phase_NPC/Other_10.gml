/// @description Insert description here

var npc = instance_create_layer(x,y,"entities",Quest_NPC);
npc.creator = id;

npc.dialog = dialog;
npc.quest_id = quest_id;
npc.phase_number = phase_number;