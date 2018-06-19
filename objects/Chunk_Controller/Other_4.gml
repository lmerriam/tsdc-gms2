chunk_count_x = ceil(room_width/chunk_size);
chunk_count_y = ceil(room_height/chunk_size);

ds_grid_resize(global.chunks,chunk_count_x,chunk_count_y);

prev_chunk_x = 0;
prev_chunk_y = 0;