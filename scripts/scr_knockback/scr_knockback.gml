///scr_knockback(obj1,obj2,force)
var obj1 = argument[0];
var obj2 = argument[1];
var force = argument[2];

show_debug_message("Force: " + string(force));

if instance_exists(obj2) {

	var dir = point_direction(obj1.x, obj1.y, obj2.x, obj2.y);

	var xforce = lengthdir_x(force, dir);
	var yforce = lengthdir_y(force, dir);

	with (obj2) {
	    physics_apply_impulse(x, y, xforce, yforce);
	}

}