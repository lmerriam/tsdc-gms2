// @description Start wave mode

// Activate wave state
Arena_Controller.step = scr_arena_wave_step;
Arena_Controller.draw = scr_arena_wave_draw;
Arena_Controller.drawgui = scr_arena_wave_drawgui;

//Remove stuff before wave
instance_destroy(Chest);
instance_destroy(Vendor);
instance_destroy(Drop_Parent);
instance_destroy(Arena_Button);
GUI.nearest_drop_in_range = false;
GUI.nearest_drop = noone;

//Iterate wave counter
wave_count += 1;

//Spawn creeps
repeat(12) {
	scr_find_spawn_point(x,y,128,Slime,scr_player_stat("Level"));
}