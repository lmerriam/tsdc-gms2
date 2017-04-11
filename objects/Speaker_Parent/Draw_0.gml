/// Draw text
draw_self();

// Draw unread notification
var read = properties[? "Read"];
if (!read) {
	draw_sprite(spr_alert,Time.now mod 80 div 10,x,y-32);
}

// Draw the text
if (show) {
	draw_set_font(PixelSmall_6);
	
	line_height = 16;
	padding = 8;
	width = 128;
	height = string_height_ext(text,line_height,width - (2*padding)) + 2*padding;
	x1 = x - width/2;
	y1 = y - height - 12;
	x2 = x1 + width;
	y2 = y1 + height;
	
	draw_rectangle_fast(x1,y1,x2,y2);
	draw_rectangle_color(x1,y1,x2,y2,c_yellow,c_yellow,c_yellow,c_yellow,true);
	draw_text_ext(x1+padding,y1+padding,text,line_height,width-(padding*2));
	draw_set_font(BASE_FONT);
}