/// Draw health bar
event_inherited();

if (percent < 100) {
  draw_healthbar(x-10,y-20,x+10,y-19,percent,c_black,c_red,c_red,0,true,false);
}


