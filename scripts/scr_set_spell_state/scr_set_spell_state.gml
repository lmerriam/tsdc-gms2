/// @param internal_spell_name

var equip = argument0;
Player.spell_state_step = asset_get_index("scr_spell_state_step_" + equip);
Player.spell_state_draw = asset_get_index("scr_spell_state_draw_" + equip);
Player.spell_timer = 0;