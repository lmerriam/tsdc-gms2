/// @description Spawn the item

var item = instance_create_layer(x,y,"entities",Quest_Equipment);
item.creator = id;
item.type = "quest";
item.item_name = item_name;
item.item_sprite = item_sprite;

scr_init_equipment(item,"Quest");