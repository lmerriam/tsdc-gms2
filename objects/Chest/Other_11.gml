/// Spawn loot
if (!properties[? "Opened"]) {
    var drop = scr_spawn_equipment(x,y,properties[? "Loot"]);
	
    image_index = 1;
    properties[? "Opened"] = true;
}

