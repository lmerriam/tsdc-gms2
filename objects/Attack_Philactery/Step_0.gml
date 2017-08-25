var hspd = lengthdir_x(spd,dir);
var vspd = lengthdir_y(spd,dir);

phy_position_x += hspd;
phy_position_y += vspd;

phy_rotation += 10;

var dis = point_distance(startx,starty,x,y);
if (dis > 128 or collision_point(x+2*hspd,y+2*vspd,Enemy_Parent,false,true)) {
	var dmg = instance_create_layer(x,y,"entities",Damage_Philactery);
	dmg.phy_rotation = -dir;
	dmg.damage = scr_player_stat("Damage");
	instance_destroy();
}

if (scr_chance(0.5)) part_particles_create(global.particles_above, x, y, global.spark_particles, 1);