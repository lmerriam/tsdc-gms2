/// Damage all life forms
event_inherited();
var force = 1000/point_distance(x,y,other.x,other.y);

if (other.id != creator) {
    scr_damage_other(scr_get_instance_stat(Player,"Spell Damage"));
    scr_knockback(self, other, force);
}

