/// Damage all life forms
event_inherited();
var force = 1000/point_distance(x,y,other.x,other.y);

if (other.id != creator) {
    scr_damage_other(Player.stats[? "Spell Damage"]);
    scr_knockback(self, other, force);
}

