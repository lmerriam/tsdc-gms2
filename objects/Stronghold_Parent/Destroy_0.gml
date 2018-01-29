/// Convert to outpost

scr_find_spawn_point(x,y,64,Chest,stats[? "Level"]);

// Create vendor
var vendor = scr_find_spawn_point(x,y,64,Vendor,stats[? "Level"]);
//scr_level_instance(vendor,5);

// Turn into outpost
instance_create_layer(x,y,"entities",Outpost_Parent);

// Announce
scr_announce("Outpost liberated!");