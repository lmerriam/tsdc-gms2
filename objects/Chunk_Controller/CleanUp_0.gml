for (var xx=0;xx<chunk_count_x;xx++) {
	for (var yy=0;yy<chunk_count_y;yy++) {
		if (ds_exists(global.chunks[# xx,yy],ds_type_map)) then ds_map_destroy(global.chunks[# xx,yy]);
	}
}

ds_grid_destroy(global.chunks);