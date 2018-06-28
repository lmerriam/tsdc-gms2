// Destroy properties

// Deregister
var entity_index = ds_list_find_index(global.entities,id);
ds_list_delete(global.entities,entity_index);

ds_map_destroy(properties);