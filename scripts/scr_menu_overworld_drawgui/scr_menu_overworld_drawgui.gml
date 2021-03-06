// Draw nav menu
scr_menu_navigation_drawgui();

// Draw the map
draw_sprite_stretched(overworld_spr,0,overworld_spr_originx,overworld_spr_originy,overworld_spr_width*overworld_spr_ratio,overworld_spr_height*overworld_spr_ratio);

// Draw the locations
var key = ds_map_find_first(overworld_locations);
var num_locations = ds_map_size(overworld_locations);
for (var i=0; i<num_locations; i++) {
	var location = overworld_locations[? key];
	var name = location[? "name"];
	
	if (location[? "discovered"]) {
		var xx = overworld_spr_originx + location[? "x"]*overworld_spr_ratio;
		var yy = overworld_spr_originy + location[? "y"]*overworld_spr_ratio;

		draw_sprite_ext(spr_location,0,xx,yy,2,2,0,c_white,1);
		scr_draw_text_shadow(xx,yy-64,name,c_black,c_white,0.3,2,270,1,fa_center);
	}
	var key = ds_map_find_next(overworld_locations,key);
}