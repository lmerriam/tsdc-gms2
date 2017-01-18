/// scr_equip_props(properties_ds)
var _old_props = argument0;
scr_update_drop_tooltip(_old_props);

var _prev_obj;
var _new_props = ds_map_create();
var _type = _old_props[? "Type"];
var _txt = _old_props[? "Text"];

var gridw = ds_grid_width(_old_props[? "Text"]);
var gridh = ds_grid_height(_old_props[? "Text"]);

// TODO: dry this
if (_type == "Weapon") {
	ds_map_copy(_new_props,_old_props);
	_new_props[? "Stats"] = ds_map_create();
	ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
	_new_props[? "Buffs"] = ds_map_create();
	ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
	_new_props[? "Text"] = ds_grid_create(gridw,gridh);
	ds_grid_copy(_new_props[? "Text"],_old_props[? "Text"]);
    _prev_obj = global.equipment_slots[# 0,0];
    global.equipment_slots[# 0,0] = _new_props;
} else if (_type == "Scroll") {
	ds_map_copy(_new_props,_old_props);
	_new_props[? "Stats"] = ds_map_create();
	ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
	_new_props[? "Buffs"] = ds_map_create();
	ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
	_new_props[? "Text"] = ds_grid_create(gridw,gridh);
	ds_grid_copy(_new_props[? "Text"],_old_props[? "Text"]);
    _prev_obj = global.equipment_slots[# 0,1];
    global.equipment_slots[# 0,1] = _new_props;
} else if (_type == "Armor") {
	ds_map_copy(_new_props,_old_props);
	_new_props[? "Stats"] = ds_map_create();
	ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
	_new_props[? "Buffs"] = ds_map_create();
	ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
	_new_props[? "Text"] = ds_grid_create(gridw,gridh);
	ds_grid_copy(_new_props[? "Text"],_old_props[? "Text"]);
    _prev_obj = global.equipment_slots[# 0,2];
    global.equipment_slots[# 0,2] = _new_props;
} else if (_type == "Gem") {
	ds_map_copy(_new_props,_old_props);
	_new_props[? "Stats"] = ds_map_create();
	ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
	_new_props[? "Buffs"] = ds_map_create();
	ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
	_new_props[? "Text"] = ds_grid_create(gridw,gridh);
	ds_grid_copy(_new_props[? "Text"],_old_props[? "Text"]);
    _prev_obj = global.equipment_slots[# 0,3];
    global.equipment_slots[# 0,3] = _new_props;
} else {
    show_message("Cant equip that object");
	return false;
}

if (_prev_obj != noone) scr_send_to_inv(_prev_obj);

return true;