/// split a string into a ds list
/// @param list
/// @param string
/// @param substring
/// @param ignoreEmpty

var list = argument0;
var str = argument1;
var substr = argument2;
var substr_len = string_length(substr);
var slot = 0;
var d_pos = 0;
var d_count = string_count(substr,str);

str += substr;

for (var i=0;i<=d_count;i++) {
	d_pos = string_pos(substr,str) + (substr_len-1);
	var copy = string_copy(str,1,d_pos-substr_len);
	if copy != "" || argument3 = false then ds_list_add(list,copy);
	else slot++;
	str = string_delete(str,1,d_pos);
}