/// Open the dialog menu with some fixture data
var intro1 = global.all_dialog[? "intro 1"]
var intro_dialog = intro1[? "text"];

var responses = intro1[? "responses"];

scr_menu_dialog(spr_player, intro1);