// Calculate hspd and vspd
var hspd = lengthdir_x(global.move_len,global.move_dir);
var vspd = lengthdir_y(global.move_len,global.move_dir);
    
// Set up the player sprite
var front = true;
var orientation = true;
if (global.aim_dir > 90 and global.aim_dir < 270) orientation = -1 else orientation = 1;
if (global.aim_dir < 135 and global.aim_dir > 45) front = false else front = true;
image_xscale = orientation*scale;
    
if (global.move_len > 0) {
    
	// @TODO: add 
    //if (front) {
    //    sprite_index = spr_player_running;
    //} else {
    //    sprite_index = spr_player_running_back;
    //}
	sprite_index = spr_player_running;
    if (sign(hspd) == orientation) image_speed = img_spd else image_speed = -img_spd;
	
	if (Time.now mod 30 < 1) part_particles_create(global.particles_below, x, y, global.footstep_particles, 1);
        
} else {
    //if (front) {
    //    sprite_index = spr_player_idle;
    //} else {
    //    sprite_index = spr_player_idle_back;
    //}
	sprite_index = spr_player_idle;
}
    
// Move the player
// TODO: how to do collision against all collision layers
var tiles = layer_tilemap_get_id("forest");
if (!tilemap_get_at_pixel(tiles,phy_position_x+hspd,phy_position_y)) phy_position_x += hspd;
if (!tilemap_get_at_pixel(tiles,phy_position_x,phy_position_y+vspd))phy_position_y += vspd;

global.player_speed_x = hspd;
global.player_speed_y = vspd;