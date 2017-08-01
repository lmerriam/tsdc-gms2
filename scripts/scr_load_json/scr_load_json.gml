/// @description Open a JSON file and return a ds_map
/// @param filename
var filename = argument0;

var theJsonFile = file_text_open_read(working_directory+argument0+".json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

return json_decode(theData);