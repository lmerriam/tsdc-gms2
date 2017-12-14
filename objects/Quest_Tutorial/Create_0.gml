event_inherited();
phase = "unconscious";
image_speed = .15;

View.screen_scale = .5;

Player.player_state_step = scr_player_state_step_unconscious;
Player.player_state_draw = scr_player_state_draw_unconscious;