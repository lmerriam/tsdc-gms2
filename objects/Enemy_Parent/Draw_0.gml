/// Draw health bar
event_inherited();

if (percent < 100) {
  var statetext;
  if (state = scr_enemy_idle_state) statetext = "idle";
  if (state = scr_enemy_chase_state) statetext = "chase";
  if (state = scr_enemy_wander_state) statetext = "wander";
  if (state = scr_enemy_stall_state) statetext = "stall";
  if (state = scr_enemy_choose_next_state) statetext = "choose";
  draw_text_transformed(x,y-12,string_hash_to_newline(statetext),.5,.5,0);
  //draw_text_transformed(x,y-32,wander_alarm,.5,.5,0);
  //draw_text_transformed(x,y-48,stall_alarm,.5,.5,0);

  //draw_text(x, y-30, string(level));
  draw_healthbar(x-10,y-20,x+10,y-19,percent,c_black,c_red,c_red,0,true,false);
}


