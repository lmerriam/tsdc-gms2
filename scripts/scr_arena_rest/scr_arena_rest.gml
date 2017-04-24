// @description Start rest mode

Arena_Controller.step = scr_arena_rest_step;
Arena_Controller.draw = scr_arena_rest_draw;
Arena_Controller.drawgui = scr_arena_rest_drawgui;

scr_find_spawn_point(x-32, y, 16, Vendor, scr_player_stat("Level"));
scr_find_spawn_point(x-32, y, 16, Chest, scr_player_stat("Level"));
instance_create_layer(x+32, y+32, "entities", Arena_Button);