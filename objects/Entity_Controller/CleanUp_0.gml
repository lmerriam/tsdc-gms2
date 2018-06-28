for (var i=0;i<ds_list_size(global.entites);i++) {
	var inst = global.entities[| i];
	ds_list_destroy(inst.properties);
}

ds_list_destroy(global.entities);