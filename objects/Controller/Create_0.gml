// Create chest registry
global.chests = ds_map_create();

// Load equipment
var theJsonFile = file_text_open_read(working_directory+"equipment.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);
global.equipment = json_decode(theData);

// TODO: remove this
scr_spawn_equipment(Player.x+32,Player.y+32,"SMG");