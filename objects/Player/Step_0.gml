// Health
if (stats[? "Health"] < 0) {
    stats[? "Health"] = 0;
}

// Stamina regen
if (stats[? "Stamina"] < stats[? "Max Stamina"] and scr_alarm_passed(stamina_timer)) {
    stats[? "Stamina"] += stats[? "Stamina Regen"];
    stamina_timer = scr_sec_from_now(1);
}

// Control player
event_inherited();
scr_get_input();

// Record coordinates
global.player_x = x;
global.player_y = y;

// Execute state
script_execute(player_step_move);
script_execute(player_step_weapon);
script_execute(player_step_spell);

/// Teleport player
if (global.teleport_player_x != noone) {
    scr_move_player(global.teleport_player_x,global.teleport_player_y);
    global.teleport_player_x = noone;
    global.teleport_player_y = noone;
}