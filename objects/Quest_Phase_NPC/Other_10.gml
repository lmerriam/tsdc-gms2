/// @description Insert description here

var npc;

if (scr_get_npc(npc_name) == noone) {
	npc = instance_create_layer(x,y,"entities",Quest_NPC);
	npc.creator = id;
	npc.npc_name = npc_name;

	npc.dialog_pre_quest = dialog_pre_quest;
	npc.dialog_post_quest = dialog_post_quest;

	npc.quest_id = quest_id;
	npc.phase_number = phase_number;
} else {
	npc = scr_get_npc(npc_name);
	npc.creator = id;
	npc.dialog_pre_quest = dialog_pre_quest;
	npc.quest_id = quest_id;
	npc.phase_number = phase_number;
}

ds_list_clear(targets);
ds_list_add(targets,npc);

if (npc_initiate) {
	with(npc) event_user(1);
}

if (move_to_player) npc.state = scr_npc_state_move_to_player;
