
// Get current line
var text = dialog_text[| dialog_text_num];

draw_set_color(c_white);
draw_set_font(PixelSmall_18);

draw_rectangle_fast(dialog_text_x1,dialog_text_y1,dialog_text_x2,dialog_text_y2);

// Draw the portrait
draw_sprite_stretched(dialog_portrait,0,dialog_portrait_x,dialog_portrait_y,dialog_portrait_w,dialog_portrait_h);

// Draw the text
draw_text_ext(dialog_text_x1+dialog_text_padding,dialog_text_y1+dialog_text_padding,text,dialog_text_line_height,global.window_width-2*dialog_text_padding);