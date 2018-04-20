/// @description Init

event_inherited();
image_speed = 0;

damaged_by = ds_list_create();
ds_list_add(damaged_by,Prop_Parent,Player,Enemy_Parent);

stats = ds_map_create();
properties[? "Stats"] = stats;
damage_object = Damage_Mushroom_Cloud;
damage = 5 + scr_player_base_stat("Level");
knockback = 8;
stats[? "Health"] = 10 + scr_player_base_stat("Level");
stats[? "Max Health"] = stats[? "Health"];