/// Draw text
draw_self();

if (show) {

	draw_rectangle_fast(x1,y1,x2,y2);

	// Draw text
	var xcur = x1 + padding;
	for(var line = 0; line < line_count; line++) {
		var ycur = y1 + padding + line_height*line;
		draw_text_transformed(xcur,ycur,text[line],.5,.5,0);
	}
}