/// HUD drawgui event

// Draw buttons
for (i = 0; i < ds_list_size(buttons); i++) {
    var btn = buttons[| i];
    if (btn[4] != noone) scr_draw_btn_sprite(btn);
}

// Draw combos
// TODO: move logic to step
if (scr_alarm_running(combo_timer) and combo_count > 2) {
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_text(window_hcenter,combo_count_y,"COMBO x" + string(combo_count))
	draw_healthbar(combo_bar_x1,combo_bar_y1,combo_bar_x2,combo_bar_y2,combo_bar_percent,c_black,c_yellow,c_yellow,0,true,false);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}

// Draw nearest drop tooltip
if (nearest_drop_in_range) {
    scr_draw_nearest_comparison(nearest_drop.properties);
}

// Draw nearest interactable button
if (nearest_interactable_in_range) {
    scr_draw_btn_sprite(interact_btn);
}
    
// Old Minimap
//draw_surface(minimap,minimap_window_x,minimap_window_y);
//draw_rectangle_color(minimap_window_x, minimap_window_y, minimap_window_x+minimap_width, minimap_window_y+minimap_height, c_black, c_black, c_black, c_black, true);
//scr_draw_9patch(spr_ui_box_2x,0,minimap_window_x-2, minimap_window_y-2, minimap_window_x+minimap_width+2, minimap_window_y+minimap_height+2,6,6,6,6);

// Radial minimap outline
draw_sprite_ext(spr_minimap_background,0,minimap_center_x,minimap_center_y,2,2,0,c_white,1);

// @todo: extract this out into a script
// Draw dynamic minimap
var range = 15;
for (var tx=global.player_tile_x-range;tx<global.player_tile_x+range;tx++) {
	for (var ty=global.player_tile_y-range;ty<global.player_tile_y+range;ty++) {
		if (tx>0 and tx<global.room_tile_w and ty>0 and ty<global.room_tile_h) {
			var rmx = tx*global.tile_size;
			var rmy = ty*global.tile_size;
			var tile = global.collision_tiles[# tx,ty];
			if (tile) {
				scr_minimap_draw_location(rmx,rmy,spr_black,false);
				//show_debug_message("Tile here: " + string(tx) + ", " + string(ty));
			}
		}
	}
}

// Draw minimap outline
draw_sprite_ext(spr_minimap_radius,0,minimap_center_x,minimap_center_y,2,2,0,c_white,1);

// Draw locations
var size = ds_list_size(global.locations);
for (var i = 0; i<size; i++) {
	var location = global.locations[| i];
	var icon = location.location_icon;
	scr_minimap_draw_location(location.x,location.y,icon,false);
}

// Draw player arrow
draw_sprite_ext(spr_player_arrow,0,minimap_center_x,minimap_center_y,2,2,global.aim_dir,c_white,1);

// Draw the current quest location
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
				if (target.x != undefined) scr_minimap_draw_location(target.x,target.y,icon,true);
			}
		}
	// Draw a pointer to the entrance of the room the next phase is in
	} else if (global.entrances[? current_phase_room] != undefined) {
		var entrance = scr_get_entrance(current_phase_room);
		scr_minimap_draw_location(entrance.x,entrance.y,icon,true);
	}
}
    
// Draw health and stamina
var hp = scr_get_instance_stat(Player,"Health");
var maxhp = scr_get_instance_stat(Player,"Max Health");
var stamina = scr_get_instance_stat(Player,"Stamina");
var maxstamina = scr_get_instance_stat(Player,"Max Stamina");
var hpercent = hp/maxhp;
var spercent = stamina/maxstamina;
//draw_healthbar(menu_btn_x2+padding,windowpadding,menu_btn_x2+padding+lbar,windowpadding+hbar,hp/maxhp*100,c_black,c_red,c_green,0,true,true);
//draw_healthbar(menu_btn_x2+padding,windowpadding+hbar+padding,menu_btn_x2+padding+lbar,windowpadding+hbar*2+padding,stamina/maxstamina*100,c_black,c_blue,c_blue,0,true,true);
scr_draw_9patch(spr_healthbar_fill,0,hbar_x1,hbar_y1,hbar_x1+hbar_width*hpercent,hbar_y2,6,6,6,6);
scr_draw_9patch(spr_ui_box_2x,0,hbar_x1,hbar_y1,hbar_x2,hbar_y2,6,6,6,6);

scr_draw_9patch(spr_staminabar_fill,0,sbar_x1,sbar_y1,sbar_x1+sbar_width*spercent,sbar_y2,6,6,6,6);
scr_draw_9patch(spr_ui_box_2x,0,sbar_x1,sbar_y1,sbar_x2,sbar_y2,6,6,6,6);

   
// Draw expr
var hbar = 3;
var expr = Player.base_stats[? "Experience"];
var maxexpr = Player.base_stats[? "Next Level Experience"];
draw_healthbar(0,window_height-hbar,window_width,window_height,expr/maxexpr*100,c_black,c_white,c_white,0,true,true);

// Draw locations
//var size = ds_list_size(global.locations);
//for (var i=0; i<size; i++) {
//	var location = global.locations[| i];
//	var xx = location.x;
//	var yy = location.y;
//	if (point_distance(Player.x,Player.y,xx,yy) < 512) {
//		scr_draw_location_pointer(xx,yy,location.location_icon);
//	}
//}

// Draw current quest
if global.current_quest {
	draw_sprite_ext(spr_location_pointer,0,20,90,2,2,270,c_white,1);
	draw_set_font(PixelSmall_12);
	scr_draw_text_shadow(32,76,string_upper(global.current_quest[? "title"]),c_white,c_black,1,3,270,1,fa_left);
	var current_phase = scr_quest_get_current_phase(global.current_quest);
	var current_phase_desc = current_phase[? "description"];
	if (current_phase_desc != undefined) {
		scr_draw_text_shadow(32,96,current_phase_desc,c_white,c_black,1,3,270,1,fa_left);
	}
}

//Draw announcements
if (ds_queue_size(global.announcements) > 0) {
	var announcement = ds_queue_head(global.announcements);
	var text = announcement[? "text"];
	var type = announcement[? "type"];
	
	// Draw announcement text
	var xx = global.window_width/2;
	var yy = global.window_height*.75;
	//draw_set_halign(fa_center);
	draw_set_font(PixelSmall_18);
	scr_draw_text_shadow(xx,yy,text,c_white,c_black,1,3,270,1,fa_center);
	
	// Draw rewards
	if (type != "text") {
		var rewards = ["xp","gold","items"];
		for (var i=0;i<3;i++) {
			var reward = rewards[i];
			var text = reward + ": " + string(announcement[? reward])
			scr_draw_text_shadow(xx,yy+(i+1)*18,text,c_white,c_black,1,3,270,1,fa_center);
			//if (announce_new) {
			//	part_particles_create(global.particles_above,xx,yy+(i+1)*18,global.bulletspark_particles,5);
			//	announce_new = false;
			//}
		}
	}
	draw_set_font(PixelSmall_12);
}