/// Set up pointer
var len = 32;
pointer_dir = point_direction(Player.x,Player.y,x,y);
pointer_x = Player.x + lengthdir_x(len,pointer_dir);
pointer_y = Player.y + lengthdir_y(len,pointer_dir);


/// Get number of remaining enemies in stronghold mob
event_inherited();

cleared = true;
for(var i = 0; i < ds_list_size(spawns); i++) {
    with(spawns[| i]) other.cleared = false;
}
if (cleared) instance_destroy();


