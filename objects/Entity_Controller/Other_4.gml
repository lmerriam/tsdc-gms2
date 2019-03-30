/// @description Insert description here
// You can write your code in this editor


// Resize and reset depth layers

var layer_count = room_height/global.depth_layer_height;

for (var i=0; i<layer_count; i++) {
	global.depth_layers[| i] = layer_create(layer_get_depth("entities_start") - i);
}