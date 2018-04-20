/// @description Insert description here
// You can write your code in this editor
scr_register_quest_phase(quest_id,phase_number,id,quest_type);

quest = scr_get_quest(quest_id,quest_type);
phase = scr_get_quest_phase(quest,phase_number);

quest_icon = noone;