/// Pull lifeforms and emit damage
event_inherited();

with (Enemy_Parent) {
    var len = distance_to_object(other);
    if (len < 64) {
        var dir = point_direction(x,y,other.x,other.y);
        phy_position_x += lengthdir_x(len,dir)/10;
        phy_position_y += lengthdir_y(len,dir)/10;
    }
}

// emit damage and reset emit timer
scr_damage(x,y,Attack_Radius_Medium,Player.id,Player.stats[? "Spell Damage"],0,0);
emit_timer = scr_sec_from_now(.3);

