var dir = point_direction(0,0,phy_speed_x,phy_speed_y);
var len = point_distance(0,0,phy_speed_x,phy_speed_y);
var force = 5*len;
var angle = choose(90,-90);
var xforce = lengthdir_x(force,dir+angle);
var yforce = lengthdir_y(force,dir+angle);

with (other) {
	physics_apply_impulse(x, y, xforce, yforce);
}
scr_damage(other,damage);
scr_bloodspot(other.x,other.y,.3);