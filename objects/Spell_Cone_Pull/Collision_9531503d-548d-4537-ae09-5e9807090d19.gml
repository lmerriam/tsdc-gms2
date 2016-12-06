/// Damage all life forms
event_inherited();
var force = -.2*point_distance(x,y,other.x,other.y);

if (other.id != creator) { //Make sure the damage object doesn't damage the entity that created it
    scr_damage_other(Player.stats[? "Spell Damage"]);
    scr_knockback(self, other, force);
}

