var xx = argument0;
var yy = argument1;

var regions = procgen_controller.regions;

var region_nearest = noone;
var dis = 9999999999;
for (var i=0; i<ds_list_size(regions); i++) {
	var region = regions[| i];
	var rx = region[? "origin x"];
	var ry = region[? "origin y"];
	
	if (point_distance(xx,yy,rx,ry) < dis) region_nearest = region;
}

return region;