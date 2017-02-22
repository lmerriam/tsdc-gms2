/// Spawn creeps and chest

if (instance_number(Enemy_Parent) = 0) {
	var plyr_level = scr_get_instance_stat(Player,"Level");

    //Spawn Slimes
    (instance_create_layer(64,64,"entities",Enemy_Spawner)).stats[? "Level"] = plyr_level;
    (instance_create_layer(416,256,"entities",Enemy_Spawner)).stats[? "Level"] = plyr_level;
    
    //Spawn chest
    scr_find_spawn_point(x,y,256,Chest,plyr_level);
    
    // Press button
    image_index = 1;
    alarm[0] = .5 * room_speed;
}

