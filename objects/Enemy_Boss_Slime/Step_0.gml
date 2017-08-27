/// Set up pointer
event_inherited();

var len = 32;
pointer_dir = point_direction(Player.x,Player.y,x,y);
pointer_x = Player.x + lengthdir_x(len,pointer_dir);
pointer_y = Player.y + lengthdir_y(len,pointer_dir);
