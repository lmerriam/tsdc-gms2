/// @description Spawn the item

var item = instance_create_layer(x,y,"entities",Quest_Equipment);
item.creator = id;
item.type = "quest";

scr_init_equipment(item,"Quest");
item.properties[? "Name"] = item_name;
item.sprite_index = item_sprite;