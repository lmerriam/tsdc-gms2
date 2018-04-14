/// Init dialog menu vars

// Dialog text
dialog_text = "";
dialog_text_line_height = 48;
dialog_text_color = c_white;
dialog_text_font = PixelSmall_18;
dialog_text_x1 = 0;
dialog_text_y1 = global.window_height - 128;
dialog_text_x2 = global.window_width;
dialog_text_y2 = global.window_height;
dialog_text_padding = 32;

// Portrait
dialog_portrait_w = 64;
dialog_portrait_h = 64;
dialog_portrait = spr_player;
dialog_portrait_x = dialog_text_padding;
dialog_portrait_y = dialog_text_y1 - dialog_portrait_w/2;

//// Player responses
//dialog_responses = noone;
//dialog_responses_line_height = 64;
//dialog_responses_color = c_white;
//dialog_responses_font = PixelSmall_24;
//dialog_responses_x = dialog_text_x;
//dialog_responses_y = global.window_height - 128;
//dialog_responses_width = dialog_text_w;

//// Close button
//dialog_closebtn_x = global.window_width-32;
//dialog_closebtn_y = 32;
//dialog_closebtn_sprite = spr_menu_button;

//Load dialog
var theJsonFile = file_text_open_read(working_directory+"dialog.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);
global.all_dialog = json_decode(theData);
//scr_debug_map(global.all_dialog);