current_chunk_x = floor(Player.x/chunk_size);
current_chunk_y = floor(Player.y/chunk_size);

if (current_chunk_x != prev_chunk_x or current_chunk_y != prev_chunk_y) {
	ds_map_clear(global.active_chunk_registry);
	
	for (var xx = current_chunk_x-1; xx <= current_chunk_x+1; xx++) {
		for (var yy = current_chunk_y-1; yy<=current_chunk_y+1; yy++) {
			if (xx>0 and xx<chunk_count_x and yy>0 and yy<chunk_count_y) {
				var chunk = global.chunks[# xx,yy];
				if (chunk != undefined and chunk != noone) {
					var size = ds_map_size(chunk);
					var key = ds_map_find_first(chunk);
					for (var i = 0; i<size; i++) {
						if (global.active_chunk_registry[? key] == undefined) {
							global.active_chunk_registry[? key] = ds_list_create();
						}
						for (var j=0; j<ds_list_size(chunk[? key]);j++) {
							var value = ds_list_find_value(chunk[? key],j);
							ds_list_add(global.active_chunk_registry[? key],value);
						}
						key = ds_map_find_next(chunk,key);
					}
				}
			}
		}
	}
}

prev_chunk_x = current_chunk_x;
prev_chunk_y = current_chunk_y;