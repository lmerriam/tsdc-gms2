/// Pull enemies then disappear
with (Enemy_Parent) {
    var nearest_inst = instance_nearest(x,y,Spell_Lineup);
    var len = distance_to_object(nearest_inst);
    if (len < 64) {
        var dir = point_direction(x,y,nearest_inst.x,nearest_inst.y);
        var xforce = lengthdir_x(len,dir)/6;
        var yforce = lengthdir_y(len,dir)/6;
        physics_apply_impulse(x,y,xforce,yforce);
    }
}

