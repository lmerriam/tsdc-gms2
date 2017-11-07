/// Check for timescale change and set image speeds accordingly

if (prev_timescale != global.timescale) {
   with(Enemy_Parent) {
       image_speed = base_image_speed * global.timescale;
   }
}

prev_timescale = global.timescale;

// Handle alarms
// TODO: destroy alarm ds and remove from global.alarms
var next_key = ds_map_find_first(global.alarms);
for (var i = 0; i<ds_map_size(global.alarms); i++) {
	var key = next_key;
	var _alarm = global.alarms[? key];
	if (_alarm[? "Time"] >= Time.now) {
		script_execute(_alarm[? "Script"]);
		ds_map_destroy(global.alarms[? key]);
		ds_map_delete(global.alarms, key);
	}
	next_key = ds_map_find_next(global.alarms,next_key);
}