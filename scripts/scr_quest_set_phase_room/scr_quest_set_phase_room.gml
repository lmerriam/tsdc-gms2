var quest_id = argument0;
var phase_number = argument1;
var rm = argument2;

var quest = scr_get_quest(quest_id);

if (quest[? "phases"] == undefined) {
	quest[? "phases"] = ds_list_create();
}

var phases = quest[? "phases"];

if (phases[| phase_number] == undefined) {
	phases[| phase_number] = ds_map_create();
}

var phase = phases[| phase_number];

phase[? "room"] = rm;