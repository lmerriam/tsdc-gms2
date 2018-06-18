current_chunk_x = floor(Player.x/chunk_size);
current_chunk_y = floor(Player.y/chunk_size);

//if (current_chunk_x != prev_chunk_x or current_chunk_y != prev_chunk_y) {

//	for (var xx = current_chunk_x-1; xx <= current_chunk_x+1; xx++) {
//		for (var yy = current_chunk_y-1; yy<=current_chunk_y+1; yy++) {
//			var chunk = global.chunks[# xx,yy];
//			var key = ds_map_find_first(chunk);
//			var size = ds_map_size(chunk);
//			for (var i = 0; i<size; i++) {
//				if (global.active_chunk_registry[? key] == undefined) {
//					global.active_chunk_registry[? key] = ds_list_create();
//				}
//				ds_list_add(global.active_chunk_registry[? key],chunk[? key]);
//				key = ds_map_find_next(chunk,key);
//			}
//		}
//	}
//}

//prev_chunk_x = current_chunk_x;
//prev_chunk_y = current_chunk_y;