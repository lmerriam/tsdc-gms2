///scr_knockback(obj1,obj2,force)
/// @param obj1
/// @param obj2
/// @param force

var obj1 = argument[0];
var obj2 = argument[1];
var force = argument[2];

if (instance_exists(obj2) and instance_exists(obj1)) {

	var dir = point_direction(obj1.x, obj1.y, obj2.x, obj2.y);

	var xforce = lengthdir_x(force, dir);
	var yforce = lengthdir_y(force, dir);

	with (obj2) {
	    physics_apply_impulse(x, y, xforce, yforce);
	}

}