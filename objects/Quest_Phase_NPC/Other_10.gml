/// @description Insert description here

var npc;

if (scr_get_npc(npc_name) == noone) {
	
	// Create new NPC
	npc = instance_create_layer(x,y,"entities",NPC);
	npc.npc_name = npc_name;

	//Set up standard and quest text
	scr_dialog_set_text(npc.dialog_standard,dialog_standard_text);

} else {
	// Set up NPC
	npc = scr_get_npc(npc_name);
	ds_map_destroy(npc.dialog_quest);
}

// Set up NPC
npc.creator = id;
npc.quest_id = quest_id;
npc.phase_number = phase_number;

// Init new quest map
npc.dialog_quest = scr_dialog_init();

// Set up quest text
scr_dialog_split_string(npc.dialog_quest,dialog_quest_text);

// Set up quest actions
scr_dialog_add_action(npc.dialog_quest,"complete quest phase",quest_id);
scr_dialog_add_action(npc.dialog_quest,"complete quest phase number",phase_number);

// Set up targets
ds_list_clear(targets);
ds_list_add(targets,npc);

if (npc_initiate) with(npc) event_user(1);

if (move_to_player) npc.state = scr_npc_state_move_to_player;
