/// Draw the map
//var maph, mapw, ratio;

// Draw nav menu
scr_draw_overlay();
scr_menu_navigation_drawgui();

// Draw the current map sprite
draw_sprite_stretched(global.current_map,0,map_offset_x,map_offset_y,map_w,map_h);

// Draw fog of war
draw_set_alpha(.75);
var fog = global.fog_grid;
for (var xx=0; xx<ds_grid_width(fog); xx++) {
	for (var yy=0; yy<ds_grid_height(fog); yy++) {
		if (fog[# xx,yy]) {
			var chunk_size = Chunk_Controller.chunk_size;
			var x1 = scr_map_x(xx*chunk_size);
			var x2 = scr_map_x((xx+1) * chunk_size);
			var y1 = scr_map_y(yy*chunk_size);
			var y2 = scr_map_y((yy+1) * chunk_size);
			draw_rectangle_fast(x1,y1,x2,y2);
		}
	}
}
draw_set_alpha(1);

// Draw locations
var num_locations = ds_list_size(global.locations);
for (var i = 0; i<num_locations; i++) {
	var location = global.locations[| i];
	if (location.discovered) {
		var map_x = scr_map_x(location.x);
	    var map_y = scr_map_y(location.y);
	    draw_sprite_ext(location.location_icon,0,map_x,map_y,2,2,0,c_white,1);
	}
}

// Draw quest marker
if (global.current_quest != noone) {
	var current_phase = scr_quest_get_current_phase(global.current_quest);
	var current_phase_obj = current_phase[? "inst"];
	var current_phase_room = current_phase[? "room"];
	var icon = spr_quest_current_minimap_icon;
	// Draw a quest pointer to the next phase
	if (current_phase_room == room_get_name(room) and current_phase_obj != undefined) {
		var targets = current_phase_obj.targets;
		if (ds_exists(targets,ds_type_list)) {
			for (var i = 0; i<ds_list_size(targets); i++) {
				var target = targets[| i];
				if (target.x != undefined) {
					var xx = scr_map_x(target.x);
					var yy = scr_map_y(target.y);
					draw_sprite_ext(icon,-1,xx,yy,2,2,0,c_white,1);
				}
			}
		}
	// Draw a pointer to the entrance of the room the next phase is in
	} else if (global.entrances[? current_phase_room] != undefined) {
		var entrance = scr_get_entrance(current_phase_room);
		var xx = scr_map_x(entrance.x);
		var yy = scr_map_y(entrance.y);
		draw_sprite_ext(icon,-1,xx,yy,2,2,0,c_white,1);
	}
}

// Draw player position
draw_sprite(spr_player_idle,0,scr_map_x(global.player_x),scr_map_y(global.player_y));

// Draw the current location
draw_text(32,32,string_hash_to_newline(current_location))