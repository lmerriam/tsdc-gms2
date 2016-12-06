///scr_calc_length(xfrom,yfrom,dir,maxlength,object);
// draws a line to the nearest point of collision and returns the length if the line hits, returns -1 if nothing is hit.
var gx, gy, ldx, ldy, length;

gx = argument0;
gy = argument1;
ldx = lengthdir_x(1,argument2);
ldy = lengthdir_y(1,argument2);

length = 1;
repeat(argument3) {
    if (position_meeting(gx+ldx*length,gy+ldy*length,argument4)) {
        draw_line_width(gx,gy,gx+ldx*length,gy+ldy*length,1);
        return(length);
    }
    length++;
}

draw_line_width(gx,gy,gx+ldx*argument3,gy+ldy*argument3,1);
return(-1);
