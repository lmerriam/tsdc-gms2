/// Spawn creeps and chest

if (instance_number(Enemy_Parent) = 0) {

    //Spawn Slimes
    (instance_create_layer(64,64,"entities",Enemy_Spawner)).stats[? "Level"] = Player.stats[? "Level"];
    (instance_create_layer(416,256,"entities",Enemy_Spawner)).stats[? "Level"] = Player.stats[? "Level"];
    
    //Spawn chest
    scr_find_spawn_point(x,y,256,Chest,Player.stats[? "Level"]);
    
    // Press button
    image_index = 1;
    alarm[0] = .5 * room_speed;
}

