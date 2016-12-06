/// Spawn loot
if (!stats[? "Opened"]) {
    var drop = scr_create_instance_with_level(x,y,stats[? "Loot"],stats[? "Level"]);
    image_index = 1;
    stats[? "Opened"] = true;
}

