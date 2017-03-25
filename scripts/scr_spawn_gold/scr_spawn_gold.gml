/// scr_spawn_gold(quantity)
quantity = argument0;

var gold = instance_create_layer(x,y,"entities",Gold);
gold.properties[? "Quantity"] = irandom(stats[? "Level"]*irandom_range(8,11));