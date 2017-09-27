type = "Pistol";
scr_init_equipment(id,type);
properties[? "Name"] = "Starter Pistol";
scr_observer_register("send to inv",scr_event_pickUpFirstWeapon,true,properties);