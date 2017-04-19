/// scr_announce(text,location_id)
//inst = instance_create_layer(Player.x,Player.y,"system_objects",Announcement);
//inst.text = argument0;
//inst.creator = argument1;
var text = argument0;
var creator = argument1;
ds_list_add(global.announcements,text);