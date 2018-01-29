scr_menu_hud();
instance_create_layer(Player.x, Player.y, "system_objects",GUI_Tutorial_LeftStick);
ds_queue_enqueue(global.announcements,"Drag on the left side of the screen to move");