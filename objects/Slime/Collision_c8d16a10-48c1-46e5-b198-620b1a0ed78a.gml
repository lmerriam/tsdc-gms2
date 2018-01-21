/// Damage the player
if (state != scr_enemy_stall_state) {
    var dir = point_direction(other.x, other.y, x, y);
    var xdir = lengthdir_x(1, dir);
    var ydir = lengthdir_y(1, dir);
    
    scr_damage_obj(other.x+xdir, other.y+ydir, Attack_Radius, id, stats[? "Damage"], stats[? "Knockback"], noone);
    
    state = scr_enemy_stall_state;
    stall_alarm = scr_sec_from_now(1);
}

