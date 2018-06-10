global.tilewidth = 32;

chunk_size = global.tilewidth * 8;
chunk_count_x = ceil(room_width/chunk_size);
chunk_count_y = ceil(room_height/chunk_size);

global.chunks = ds_grid_create(chunk_count_x,chunk_count_y);

for (var xx=0;xx<chunk_count_x;xx++) {
	for (var yy=0;yy<chunk_count_y;yy++) {
		global.chunks[# xx,yy] = ds_map_create();
	}
}