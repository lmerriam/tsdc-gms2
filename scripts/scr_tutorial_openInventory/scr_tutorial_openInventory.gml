scr_menu_hud();
instance_create_layer(Player.x, Player.y, "system_objects",GUI_Tutorial_Inventory);
ds_queue_enqueue(global.announcements,"Open your inventory to equip your new weapon");