/// @description Insert description here
if (last_spawn > 0 and ds_map_size(enemies)<=0) {
		show_debug_message("Enemies empty");
		instance_destroy();
		
} else if (last_spawn = 0 and point_distance(x,y,Player.x,Player.y)<256) {
	repeat(quantity) {
		var inst = instance_create_layer(x,y,"entities",enemy);
		inst.mob = id;
		ds_map_add(enemies,inst,true);
		last_spawn = Time.now;
	}
}