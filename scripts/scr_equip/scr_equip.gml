///scr_equip(obj)
obj = argument[0];
var inst = obj.object_index;
var prev_obj;

if (object_is_ancestor(inst,Drop_Weapon_Parent)) {
    prev_obj = global.equipment_slots[# 0,0];
    global.equipment_slots[# 0,0] = obj;
} else if (object_is_ancestor(inst,Drop_Scroll_Parent)) {
    prev_obj = global.equipment_slots[# 0,1];
    global.equipment_slots[# 0,1] = obj;
} else if (object_is_ancestor(inst,Drop_Armor_Parent)) {
    prev_obj = global.equipment_slots[# 0,2];
    global.equipment_slots[# 0,2] = obj;
} else if (object_is_ancestor(inst,Drop_Gem_Parent)) {
    prev_obj = global.equipment_slots[# 0,3];
    global.equipment_slots[# 0,3] = obj;
} else {
    show_message("Cant equip that object");
}

if (prev_obj != noone) scr_send_to_inv(prev_obj);

scr_activate_inv();

// Update drop tooltips
with(Drop_Parent) scr_update_drop_tooltip();
scr_calc_stats();

if (obj.persistent = false) obj.persistent = true;
obj.phy_position_x = -999;
obj.phy_position_y = -999;
