/// @description Regenerate the map

// Generate seed
random_set_seed(current_time);
show_debug_message("Seed" + string(random_get_seed()));

ds_grid_clear(tile_grid,false);

// TODO: all the embedded maps and lists are just hanging around...
ds_list_clear(region_paths);
ds_map_clear(region_neighbors);
ds_list_clear(regions);
mp_grid_clear_all(global.path_tiles);

var lay_id = layer_get_id("ProcgenTiles");
var map_id = layer_tilemap_get_id(lay_id);
tilemap_clear(map_id,0);

layer_destroy("props");
layer_create(0,"props");

with (Chest) instance_destroy();

//// Generate voronoi regions
//regions = ds_list_create();
//repeat(8) {
//	var placed = false;
//	while(!placed) {
//		var xx = irandom_range(12,rm_tile_width-12);
//		var yy = irandom_range(12,rm_tile_height-12);
//		// Check that the new point is not too close to an existing one
//		var dis_to_nearest = 9999;
//		for(var i=0;i<ds_list_size(regions);i++) {
//			var other_region = regions[| i];
//			var other_x = other_region[? "origin x"];
//			var other_y = other_region[? "origin y"];
//			var dis_to_other = point_distance(xx,yy,other_x,other_y);
//			if dis_to_other < dis_to_nearest then dis_to_nearest = dis_to_other;
//		}
//		// Create the new region if 
//		if (dis_to_nearest > 4) {
//			var new_region = ds_map_create();
//			new_region[? "origin x"] = xx;
//			new_region[? "origin y"] = yy;
//			ds_list_add(regions,new_region);
//			placed = true;
//		}
//	}
//}

// Generate random noise
//for(var chunk_x=1;chunk_x<rm_chunk_width-1;chunk_x++) {
//	for(var chunk_y=1;chunk_y<rm_chunk_height-1;chunk_y++) {
//		var x1 = chunk_x*chunk_size;
//		var x2 = (chunk_x+1)*chunk_size;
//		var y1 = chunk_y*chunk_size;
//		var y2 = (chunk_y+1)*chunk_size;
//		var chance_to_start_alive = random_range(.1,.4);
//		scr_procgen_seed_random_noise(tile_grid,x1,y1,x2,y2,chance_to_start_alive);
//	}
//}

//// Generate seed via random sprays
//repeat(48) {
//	var xx = irandom_range(3,rm_tile_width-3);
//	var yy = irandom_range(3,rm_tile_height-3);
//	repeat(36) {
//		var tile_x = xx + irandom_range(-12,12);
//		var tile_y = yy + irandom_range(-12,12);
//		tile_grid[# tile_x,tile_y] = true;
//	}
//}

//// Generate seed via random square sprays
show_debug_message("Generate tilemap seed via spray")
var spray_count = 24;
var spray_radius = 48;
var part_count = 64;
var part_radius = 10;
var padding = 64;

repeat(spray_count) {
	var origin_x = irandom_range(padding,rm_tile_width-padding);
	var origin_y = irandom_range(padding,rm_tile_height-padding);
	//layer_sprite_create("props",origin_x*tile_size,origin_y*tile_size,spr_area_damage);
	//var spray_radius = irandom_range(spray_radius*.75,spray_radius*1.25);
	
	var region = ds_map_create();
	region[? "origin x"] = origin_x;
	region[? "origin y"] = origin_y;
	region[? "neighbors"] = ds_list_create();
	ds_list_add(regions,region);
	
	repeat(irandom_range(part_count,part_count*3)) {
		var dir = irandom(360);
		var len = irandom(spray_radius);
		var part_x = floor(origin_x + lengthdir_x(len,dir));
		var part_y = floor(origin_y + lengthdir_y(len,dir));
		
		ds_grid_set_disk(tile_grid,part_x,part_y,irandom_range(1,part_radius),true);
	}
}

// Grow seeded tilemap
show_debug_message("Growing");
var numberOfSteps = 2;
var birth_limit = 3;
var death_limit = 3;
repeat (numberOfSteps) {
	// Create new grid so we can continue to reference prior grid state as we iterate over the new grid
	var new_grid = ds_grid_create(rm_tile_width,rm_tile_height);
	ds_grid_copy(new_grid,tile_grid);
	for (var xx=0; xx<rm_tile_width; xx++) {
		for (var yy=0; yy<rm_tile_height; yy++) {

			// Count living neighbors
			var living_neighbors = scr_grid_neighbor_count(tile_grid, true, xx, yy);
			
			// Apply the rules of life
			var tile_alive = tile_grid[# xx,yy];
			if (tile_alive) {
				if (living_neighbors<death_limit) {
					new_grid[# xx,yy] = false;
				} else {
					new_grid[# xx,yy] = true;
				}
			} else {
				if (living_neighbors>birth_limit) {
					new_grid[# xx,yy] = true;
				} else {
					new_grid[# xx,yy] = false;
				}
			}
		}
	}
	ds_grid_copy(tile_grid,new_grid);
	ds_grid_destroy(new_grid);
}

// Place trees and props
show_debug_message("Placing trees");
//var len_max = 512;
//repeat(24) {
//	var x_origin = irandom(ds_grid_width(tile_grid));
//	var y_origin = irandom(ds_grid_height(tile_grid));
//	if (tile_grid[# x_origin,y_origin]) {
//		x_origin *= tile_size;
//		y_origin *= tile_size;
//		repeat(24) {
//			var len = irandom(len_max);
//			var dir = irandom(360);
//			var xx = x_origin + lengthdir_x(len,dir);
//			var yy = y_origin + lengthdir_y(len,dir);
//			if !place_meeting(xx,yy,Entity_Parent) instance_create_layer(xx,yy,"entities",Tree);
//		}
//	}
//}

// Create tiles
for (var xx=0; xx<rm_tile_width; xx++) {
	for (var yy=0; yy<rm_tile_height; yy++) {
		var tile = tile_grid[# xx,yy];
		if tile tilemap_set(map_id, 2, xx, yy);
	}
}

// Create collision tiles
ds_grid_resize(global.collision_tiles,rm_tile_width,rm_tile_height);
for (var xx=0; xx<rm_tile_width; xx++) {
	for (var yy=0; yy<rm_tile_height; yy++) {
		var tile = tile_grid[# xx,yy];
		global.collision_tiles[# xx,yy] = !tile;
		if !tile mp_grid_add_cell(global.path_tiles,xx,yy);
	}
}

// Generate minimum spanning tree
// Create collections of connected and unconnected regions
var regions_unconnected = ds_list_create();
var regions_connected = ds_list_create();
ds_list_copy(regions_unconnected, regions);
// Pick a random starting point and add it to the connected list
ds_list_add(regions_connected,regions_unconnected[| 0]);
ds_list_delete(regions_unconnected,0);
var region_initial = regions[| 0];
region_initial[? "level"] = 1;
//Iterate through the regions and add the nearest unconnected to the nearest connected until all connected
while (ds_list_size(regions_unconnected)>0) {
	var weight = 99999999999;
	var nb_1;
	var nb_2;
	var region_to_add = noone;
	var new_path = ds_map_create();
	for(var i=0; i<ds_list_size(regions_connected); i++) {
		for (var j=0; j<ds_list_size(regions_unconnected); j++) {
			var reg_1 = regions_connected[| i];
			var x1 = reg_1[? "origin x"];
			var y1 = reg_1[? "origin y"];
		
			var reg_2 = regions_unconnected[| j];
			var x2 = reg_2[? "origin x"];
			var y2 = reg_2[? "origin y"];
		
			var dis = point_distance(x1,y1,x2,y2);
			if dis<weight {
				weight=dis;
				region_to_add = j;
				new_path[? "x1"] = x1;
				new_path[? "y1"] = y1;
				new_path[? "x2"] = x2;
				new_path[? "y2"] = y2;
				// Set neighbors
				nb_1 = reg_1;
				nb_2 = reg_2;
			}
		}
	}
	ds_list_add(region_paths,new_path);
	ds_list_add(regions_connected,regions_unconnected[| region_to_add]);
	ds_list_delete(regions_unconnected,region_to_add);
	
	// Link the new neighbors
	if (!region_neighbors[? nb_1]) region_neighbors[? nb_1] = ds_list_create();
	if (!region_neighbors[? nb_2]) region_neighbors[? nb_2] = ds_list_create();
	ds_list_add(region_neighbors[? nb_1], nb_2);
	ds_list_add(region_neighbors[? nb_2], nb_1);
	
	// Assign levels
	nb_2[? "level"] = nb_1[? "level"] + 1;
}
ds_list_destroy(regions_connected);
ds_list_destroy(regions_unconnected);

// Generate town at start point
var rx = region_initial[? "origin x"];
var ry = region_initial[? "origin y"];

var points = ds_list_create();
repeat(8){
	var xx = irandom_range(rx-8,rx+8)<<5;
	var yy = irandom_range(ry-8,ry+8)<<5;
	var point = ds_map_create();
	point[? "x"] = xx;
	point[? "y"] = yy;
	ds_list_add(points,point);
	layer_sprite_create("props",xx,yy,spr_cottage_brown);
}

// Put the player at one of the regions
show_debug_message("Spawning player");
var player_spawn_region = regions[| 0];
var player_spawn_x = player_spawn_region[? "origin x"] * tile_size;
var player_spawn_y = player_spawn_region[? "origin y"] * tile_size;
scr_move_player(player_spawn_x,player_spawn_y);

// Seed chests on boundaries
show_debug_message("Placing points of interest");
var pois_placed = 0;
while pois_placed < 40 {
	var xx = irandom(rm_tile_width-1);
	var yy = irandom(rm_tile_height-1);
	var tile = tile_grid[# xx, yy];
	var neighbors = scr_grid_neighbor_exists(tile_grid,false,xx,yy);
	if (tile and neighbors) {
		var sprx = xx*tile_size;
		var spry = yy*tile_size;
		layer_sprite_create("props",sprx,spry,spr_damage_medium);
		pois_placed++;
	}
}
// Seed chests randomly
var pois_placed = 0;
while pois_placed < 100 {
	var xx = irandom(rm_tile_width-1);
	var yy = irandom(rm_tile_height-1);
	var tile = tile_grid[# xx, yy];
	if tile {
		// Bitshifting to multiply by 32 (tile grid) efficiently
		var sprx = xx<<5;
		var spry = yy<<5;
		var chest = instance_create_layer(sprx,spry,"entities",Chest);
		// Level the chest
		var region = scr_region_find_nearest(sprx,spry);
		var level = region[? "level"];
		chest.stats[? "Level"] = level;
		
		pois_placed++;
	}
}

// Tile the paths
var path = path_add();
for (var i=0; i<ds_list_size(region_paths); i++) {
	var edge = region_paths[| i];
	var x1 = edge[? "x1"]<<5;
	var y1 = edge[? "y1"]<<5;
	var x2 = edge[? "x2"]<<5;
	var y2 = edge[? "y2"]<<5;
	
	if mp_grid_path(global.path_tiles,path,x1,y1,x2,y2,true) {
		for (var j=0; j<path_get_number(path); j++) {
			var xx = path_get_point_x(path,j)>>5;
			var yy = path_get_point_y(path,j)>>5;
			tilemap_set(map_id, 1, xx, yy);
			tilemap_set(map_id, 1, xx+choose(-1,0,1), yy);
		}
	}
}