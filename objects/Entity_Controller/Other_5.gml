/// @description destroy entity properties

for (var i=0;i<ds_list_size(global.entities);i++) {
	var inst = global.entities[| i];
	ds_map_destroy(inst.properties);
}

ds_list_clear(global.entities);