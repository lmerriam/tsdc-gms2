/// Check for timescale change and set image speeds accordingly

if (prev_timescale != global.timescale) {
   with(Enemy_Parent) {
       image_speed = base_image_speed * global.timescale;
   }
}

prev_timescale = global.timescale;

