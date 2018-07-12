/// @param name

var name = argument0;

for (var i=0; i<ds_map_size(global.observers);i++) {
	var obs = global.observers[| i];
	var obs_name = obs[? "name"];
	if (name == obs_name) {
		var expire = obs[? "expire"];
		var args = obs[? "args"];
	}
}