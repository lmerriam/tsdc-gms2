/// @description Insert description here
// You can write your code in this editor
var npc = instance_create_layer(x,y,"entities",Quest_NPC);
npc.creator = id;

npc.dialog = dialog;
npc.quest_id = quest_id;
npc.phase_number = phase_number;