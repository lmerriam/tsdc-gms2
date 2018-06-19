var x1 = chunk_size * current_chunk_x;
var y1 = chunk_size * current_chunk_y;

var x2 = x1 + chunk_size;
var y2 = y1 + chunk_size;

draw_rectangle(x1,y1,x2,y2,true);