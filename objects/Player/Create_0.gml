/// Init Player object
event_inherited();

device_mouse_dbclick_enable(false);

scale = 1;
image_xscale = scale;
image_yscale = scale;
img_spd = .3*30/room_speed;
phy_fixed_rotation = true;

// Timers
attack_timer = 0;
spell_timer = 0;
stamina_timer = 0;

// Teleport
global.teleport_player_x = noone;
global.teleport_player_y = noone;

global.player_speed_x = 0;
global.player_speed_y = 0;

// Give some gold
properties[? "Gold"] = 1000;

/// Init stats
base_stats = ds_map_create();
properties[? "Base Stats"] = base_stats;

// Levels
base_stats[? "Level"] = 1;
base_stats[? "Experience"] = 0;
base_stats[? "Next Level Experience"] = 5;
base_stats[? "Stat points"] = 10;

// Health
base_stats[? "Max Health"] = 50;
base_stats[? "Health"] = base_stats[? "Max Health"];
base_stats[? "Health Regen"] = 1;

// Stamina
base_stats[? "Max Stamina"] = 10;
base_stats[? "Stamina"] = base_stats[? "Max Stamina"];
base_stats[? "Stamina Regen"] = 1;

// Attack stats
base_stats[? "Damage"] = 3;
base_stats[? "Spell Damage"] = 3;

// Defense
base_stats[? "Defense"] = 10;

// Speed
base_stats[? "Speed"] = 2 * 30/room_speed;

// Increment stats
stat_increments = ds_map_create();
stat_increments[? "Max Health"] = 3;
stat_increments[? "Max Stamina"] = 3;
stat_increments[? "Damage"] = 1;
stat_increments[? "Spell Damage"] = 1;
stat_increments[? "Defense"] = 1;
stat_increments[? "Speed"] = .1;

// Set player state
player_state_step = scr_player_state_step_standard;
player_state_draw = scr_player_state_draw_standard;

// Set weapon state
weapon_state_step = scr_weapon_state_step_standard;
weapon_state_draw = scr_weapon_state_draw_standard;

// Set spell state
spell_state_step = scr_spell_state_step_standard;
spell_state_draw = scr_spell_state_draw_standard;