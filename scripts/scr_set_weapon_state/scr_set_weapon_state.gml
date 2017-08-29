/// @param internal_equipment_name

var equip = argument0;
Player.weapon_state_step = asset_get_index("scr_weapon_state_step_" + equip);
Player.weapon_state_draw = asset_get_index("scr_weapon_state_draw_" + equip);
Player.attack_timer = 0;