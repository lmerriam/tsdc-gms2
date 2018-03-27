/// @description Set the current quest
/// @param quest_id
/// @param type

var quest_id = argument0;
var type = argument1;

global.current_quest = scr_get_quest(quest_id,type);