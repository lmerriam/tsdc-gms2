// Draw nav menu
scr_menu_navigation_drawgui();

// Draw the map
draw_sprite_stretched(overworld_spr,0,overworld_spr_originx,overworld_spr_originy,overworld_spr_width*overworld_spr_ratio,overworld_spr_height*overworld_spr_ratio);

// Draw the locations
var key = ds_map_find_first(overworld_locations);
for (var i=0; i<ds_map_size(overworld_locations); i++) {
	var location = overworld_locations[? key];
	
	if (location[? "discovered"]) {
		var xx = overworld_spr_originx + location[? "x"]*overworld_spr_ratio;
		var yy = overworld_spr_originy + location[? "y"]*overworld_spr_ratio;

		draw_sprite(spr_location,0,xx,yy);
		scr_draw_text_shadow(xx,yy-64,key,c_black,c_white,0.3,2,270,1,fa_center);
	}
	var key = ds_map_find_next(overworld_locations,key);
}