///scr_move_player(x,y)
var xx = argument0;
var yy = argument1;

Player.phy_position_x = xx;
Player.phy_position_y = yy;
View.x = xx;
View.y = yy;
HUD.x = xx;
HUD.y = yy;
Time.x = xx;
Time.y = yy;
