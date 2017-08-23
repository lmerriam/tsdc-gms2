scr_move_toward_instance(Player,6);

var dis = point_distance(x,y,Player.x,Player.y);
if (dis < 4) {
	Player.has_boomerang = true;
	instance_destroy();
}

phy_rotation += 10;
var damage = 0;