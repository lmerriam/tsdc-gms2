/// Draw health bar
event_inherited();
draw_self();

if (percent < 1) {
  scr_draw_9patch(spr_enemy_health_fill,0,x-10,y-20,x+10*percent,y-14,1,1,1,1);
  scr_draw_9patch(spr_enemy_health_outline,0,x-10,y-20,x+10,y-14,2,2,2,2);
}

if mp_grid_path(global.path_tiles, path, x, y, Player.x, Player.y, 1)
   {
   draw_path(path, x, y, false);
   }