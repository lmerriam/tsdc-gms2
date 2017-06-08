/// Spawn loot
if (!properties[? "Opened"]) {
    var drop = scr_spawn_drop(x,y,properties[? "Loot"],stats[? "Level"]);
    image_index = 1;
    properties[? "Opened"] = true;
}

