/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
for (var i=0; i<ds_list_size(region_paths); i++) {
	var path = region_paths[| i];
	var x1 = path[? "x1"]*tile_size;
	var y1 = path[? "y1"]*tile_size;
	var x2 = path[? "x2"]*tile_size;
	var y2 = path[? "y2"]*tile_size;
	
	draw_line(x1,y1,x2,y2);
	if i==0 draw_circle(x1,y1,128,true);
}
draw_set_color(c_white);