for (var xx=0;xx<chunk_count_x;xx++) {
	for (var yy=0;yy<chunk_count_y;yy++) {
		if (ds_exists(global.chunks[# xx,yy],ds_type_map)) then ds_map_destroy(global.chunks[# xx,yy]);
	}
}
// TODO: this is a HACK. resizing the chunk grid bigger than any room so we don't have to 
ds_grid_resize(global.chunks,50,50);
ds_grid_clear(global.chunks,noone);