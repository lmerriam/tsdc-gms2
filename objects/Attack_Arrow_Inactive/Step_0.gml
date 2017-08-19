if (instance_exists(inst)) {
	x = inst.x + x_offset;
	y = inst.y + y_offset;
} else {
	instance_destroy();
}