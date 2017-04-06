/// Init speaker
event_inherited();

// Text
text[0] = "Warning: slimes ahead.";
properties[? "Text"] = text;
properties[? "Read"] = false;

// Textbox properties
line_height = 16;
line_count = array_length_1d(text);
padding = 8;
width = 128;
height = line_count*line_height+(padding*2);
x1 = x - width/2;
y1 = y - height - 12;
x2 = x1 + width;
y2 = y1 + height;
show = false;