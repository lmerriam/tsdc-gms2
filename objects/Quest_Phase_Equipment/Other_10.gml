/// @description Spawn the item

var item = instance_create_layer(x,y,"entities",Equipment_Parent);
//item.creator = id;

scr_init_equipment(item,"Quest");

var args = ds_map_create();
args[? "item name"] = item_name;
args[? "quest id"] = quest_id;
args[? "phase number"] = phase_number;
scr_observer_register("quest equipment" + quest_id + string(phase_number),"send to inv",scr_observer_pickUpQuestItem,args);