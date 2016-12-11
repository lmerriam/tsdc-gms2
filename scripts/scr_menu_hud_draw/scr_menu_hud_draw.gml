// HUD draw event

// Prep the minimap
if (surface_exists(minimap)) {

    surface_set_target(minimap);
    
    draw_clear(c_black);
    draw_sprite_part(global.current_map,0,scr_minimap_x(Player.x)-50,scr_minimap_y(Player.y)-50,100,100,0,0);
    
    surface_reset_target();
    
} else {
    minimap = surface_create(100,100);
}