/// Draw the map
//var maph, mapw, ratio;

// Draw the current map sprite
draw_sprite_stretched(global.current_map,0,map_offset_x,map_offset_y,map_spr_w,map_spr_h);

// Draw the marker and set its map coordinates
with(Location) {
    map_x = scr_map_x(x);
    map_y = scr_map_y(y);
    draw_sprite(sprite_index,0,map_x,map_y);
}

// Draw player position
draw_sprite(spr_player_idle,0,scr_map_x(global.player_x),scr_map_y(global.player_y));

// Draw the current location
draw_text(32,32,string_hash_to_newline(current_location));

