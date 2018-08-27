global.tilewidth = 32;

chunk_size = global.tilewidth * 8;
chunk_count_x = ceil(room_width/chunk_size);
chunk_count_y = ceil(room_height/chunk_size);
prev_chunk_x = 0;
prev_chunk_y = 0;
chunk_change = false;

global.chunks = ds_grid_create(chunk_count_x,chunk_count_y);
ds_grid_clear(global.chunks,noone);

//for (var xx=0;xx<chunk_count_x;xx++) {
//	for (var yy=0;yy<chunk_count_y;yy++) {
//		global.chunks[# xx,yy] = ds_map_create();
//		show_debug_message("Chunking: " + string(xx) + ", " + string(yy));
//	}
//}

global.active_chunk_registry = ds_map_create();