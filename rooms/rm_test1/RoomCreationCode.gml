//global.current_map = spr_map_test;
global.current_map = sprite_add(working_directory + "rm_test.png",0,false,false,0,0);
GUI.minimap_ratio = room_width/sprite_get_width(global.current_map);
//scr_load_map("tsdcTest");