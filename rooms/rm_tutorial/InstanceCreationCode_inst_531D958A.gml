type = "Pistol";
scr_init_equipment(id,type);
properties[? "Name"] = "Starter Pistol";
var tutorial_quest = instance_create_layer(x,y,"system_objects",Quest_Tutorial);
tutorial_quest.creator = id;
tutorial_quest.quest_weapon_id = properties[? "ID"];

//scr_observer_register("send to inv",scr_event_pickUpFirstWeapon,true,properties);