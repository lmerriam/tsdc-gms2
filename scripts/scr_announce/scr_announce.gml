/// scr_announce(text)
/// @param text
/// @param type
/// @param xp
/// @param gold
/// @param item

var text = argument0;
var type = argument1;
var xp = argument2;
var gold = argument3;
var item = argument4;

var announcement = ds_map_create();
announcement[? "text"] = text;
announcement[? "type"] = type;
announcement[? "xp"] = xp;
announcement[? "gold"] = gold;
announcement[? "item"] = item;

ds_queue_enqueue(global.announcements,announcement);