/// @description Insert description here
// You can write your code in this editor
//for (var i = 0; i<ds_list_size(mobs_list); i++) {
//	var mob = mobs_list[| i];
//	var enemies = mob.enemies;
	
//	if (mob.last_spawn > 0 and ds_map_size(enemies)<=0) {
//		instance_destroy(mob);
//		ds_list_delete(mobs_list,i);
		
//	} else if (point_distance(mob.x,mob.y,Player.x,Player.y)<256 and scr_alarm_passed(mob.next_spawn)) {
//		repeat(mob.quantity) {
//			var inst = instance_create_layer(mob.x,mob.y,"entities",mob.enemy);
//			ds_map_add(enemies,inst);
//			inst.mob = mob;
//		}
//		mob.last_spawn = Time.now;
//		mob.next_spawn = scr_sec_from_now(180);
//	}
//}