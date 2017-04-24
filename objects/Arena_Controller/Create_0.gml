/// @description Set initial state
// You can write your code in this editor

// Set up the various menus and their elements
scr_arena_wave_create();
scr_arena_rest_create();

// Set initial menu state
step = scr_arena_rest_step;
draw = scr_arena_rest_draw;
drawgui = scr_arena_rest_drawgui;