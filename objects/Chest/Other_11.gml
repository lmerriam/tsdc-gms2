/// Spawn loot
if (!stats[? "Opened"]) {
    var drop = scr_spawn_drop(x,y,stats[? "Loot"],stats[? "Level"]);
    image_index = 1;
    stats[? "Opened"] = true;
}

