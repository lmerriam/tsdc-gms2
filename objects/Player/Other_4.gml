phy_fixed_rotation = true;

var rm_prev = global.rm_previous;
var rm_prev_door = scr_get_entrance(rm_prev);

if (rm_prev_door == noone ) {
	scr_move_player(Spawn_Player.x,Spawn_Player.y);	
} else {
	scr_move_player(rm_prev_door.x,rm_prev_door.y);
}