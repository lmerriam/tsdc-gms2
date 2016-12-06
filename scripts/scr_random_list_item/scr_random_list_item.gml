///scr_random_list_item(list)
var item = ds_list_find_value(argument[0], irandom(ds_list_size(argument[0]) - 1));
return item;
