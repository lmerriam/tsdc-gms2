// Set up properties
scr_entity_init(id);

// Set up depth layer
if !ds_list_empty(global.depth_layers) layer = global.depth_layers[| y div global.depth_layer_height];