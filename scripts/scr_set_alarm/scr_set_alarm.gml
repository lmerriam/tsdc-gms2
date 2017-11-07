/// scr_set_alarm()
/// @param name
/// @param time
/// @param script

var title = argument0;
var time = argument1;
var script = argument2;

var _alarm;

if (global.alarms[? title] == undefined) {
	_alarm = ds_map_create();
	global.alarms[? title] = _alarm;
} else {
	_alarm = global.alarms[? title];
}

_alarm[? "Time"] = time;
_alarm[? "Script"] = script;