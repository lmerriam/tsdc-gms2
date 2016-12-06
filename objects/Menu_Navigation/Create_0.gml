/// Init buttons
tab_width = global.window_width/5;
tab_height = 64;

inv_btn[0] = 0;
inv_btn[1] = 0;
inv_btn[2] = tab_width;
inv_btn[3] = tab_height;
inv_btn[4] = "INVENTORY";
inv_btn[5] = global.menu_inventory;

char_btn[0] = tab_width;
char_btn[1] = 0;
char_btn[2] = tab_width;
char_btn[3] = tab_height;
char_btn[4] = "CHARACTER";
char_btn[5] = global.menu_character;

map_btn[0] = char_btn[0]+tab_width;
map_btn[1] = 0;
map_btn[2] = tab_width;
map_btn[3] = tab_height;
map_btn[4] = "MAP";
map_btn[5] = global.menu_map;

save_btn[0] = map_btn[0]+tab_width+4;
save_btn[1] = 0;
save_btn[2] = tab_width-4;
save_btn[3] = tab_height;
save_btn[4] = "SAVE";
save_btn[5] = noone;

close_btn[0] = save_btn[0]+tab_width;
close_btn[1] = 0;
close_btn[2] = tab_width;
close_btn[3] = tab_height;
close_btn[4] = "CLOSE";
close_btn[5] = noone;

tab_btns = ds_list_create();
ds_list_add(tab_btns,inv_btn,char_btn,map_btn,save_btn,close_btn);

