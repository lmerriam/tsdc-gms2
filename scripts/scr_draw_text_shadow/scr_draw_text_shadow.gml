/// scr_draw_text_shadow(x,y,str,color,shadow,intensity,distance,direction,alpha,align)
//
//  Draws a given string with a simple shadow effect applied to it.
//
/// @param x
/// @param y         position of text, real
/// @param str         text, string
/// @param color       text color, real
/// @param shadow      shadow color, real
/// @param intensity   shadow intensity [0..1], real
/// @param distance    shadow distance in pixels, real
/// @param direction   shadow direction in degrees, real
/// @param alpha
/// @param align
/// GMLscripts.com/license
{
    var c,a,i,j;
    c = draw_get_color();
    a = argument8;
    i = lengthdir_x(argument6, argument7);
    j = lengthdir_y(argument6, argument7);
    draw_set_halign(argument9);
    draw_set_color(argument4);
    draw_set_alpha(a * argument5);
    draw_text_ext_transformed(argument0 + i, argument1 + j, string_hash_to_newline(argument2), -1, -1, 1, 1,0);
    draw_set_color(argument3);
    draw_set_alpha(a);
    draw_text_ext_transformed(argument0, argument1, string_hash_to_newline(argument2), -1, -1, 1, 1, 0);
    draw_set_color(c);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    return 0;
}
