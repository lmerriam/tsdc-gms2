// Prep minimap surface
var sprw = sprite_get_width(global.current_map);
var sprh = sprite_get_height(global.current_map);

if (surface_exists(minimap)) {

    surface_set_target(minimap);
    
    draw_clear(c_black);
    draw_sprite_part(global.current_map,0,Player.x/4-100,Player.y/4-100,200,200,0,0);
    
    surface_reset_target();
    
} else {
    minimap = surface_create(200,200);
}