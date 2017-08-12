/// @description Rare weapon twinkle
/// @param color

// Initialize our global blood particle
var pt = part_type_create();

// Set the particle properties for appearance, etc.
part_type_sprite(pt,spr_twinkle,true,true,false);
part_type_size(pt, 1, 1.5, 0, 0);
part_type_speed(pt, .1, .2, 0, 0);
part_type_direction(pt, 90, 90, 0, 0);
part_type_life(pt,.3*room_speed,.5*room_speed);
part_type_color1(pt,argument0);
part_type_orientation(pt,0,180,8,0,0);

return pt;