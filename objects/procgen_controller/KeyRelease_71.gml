/// @description Regenerate the map

// Generate seed
random_set_seed(current_time);

ds_grid_clear(tile_grid,false);

var lay_id = layer_get_id("ProcgenTiles");
var map_id = layer_tilemap_get_id(lay_id);
tilemap_clear(map_id,0);

layer_destroy("props");
layer_create(0,"props");

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
var spray_count = 12;
var spray_radius = 48;
var part_count = 64;
var part_radius = 12;
var padding = chunk_size*2;

regions = ds_list_create();

repeat(spray_count) {
	var origin_x = irandom_range(padding,rm_tile_width-padding);
	var origin_y = irandom_range(padding,rm_tile_height-padding);
	layer_sprite_create("props",origin_x*tile_size,origin_y*tile_size,spr_area_damage);
	//var spray_radius = irandom_range(spray_radius*.75,spray_radius*1.25);
	
	var region = ds_map_create();
	region[? "origin x"] = origin_x;
	region[? "origin y"] = origin_y;
	ds_list_add(regions,region);
	
	repeat(irandom_range(part_count,part_count*3)) {
		var dir = irandom(360);
		var len = irandom(spray_radius);
		var part_x = floor(origin_x + lengthdir_x(len,dir));
		var part_y = floor(origin_y + lengthdir_y(len,dir));

		repeat(24){
			var dir = irandom(360);
			var len = irandom(part_radius);
			var sm_part_x = floor(part_x + lengthdir_x(len,dir));
			var sm_part_y = floor(part_y + lengthdir_y(len,dir));
			tile_grid[# sm_part_x,sm_part_y] = true;
		}
	}
}

// Grow
var numberOfSteps = 4;
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

// Draw water tiles
for (var xx=0; xx<rm_tile_width; xx++) {
	for (var yy=0; yy<rm_tile_height; yy++) {
		var tile = tile_grid[# xx,yy];
		if tile tilemap_set(map_id, 2, xx, yy);
	}
}