draw_set_alpha(.1);
draw_rectangle_color(0,0,global.window_width,global.window_height,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,false);
draw_set_alpha(1);
draw_set_halign(fa_center);
var spell = scr_get_spell();
draw_text(window_width/2,window_height*.75,string_hash_to_newline(spell[? "Tooltip"]));
draw_set_halign(fa_left);