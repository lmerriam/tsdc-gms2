/// Open menu
var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);

if (global.cast_mode) {
    var spell = scr_get_spell().script;
    script_execute(spell);
    global.cast_mode = false;
    global.timescale = 1;
    //Player.spell_timer = scr_sec_from_now(Player.spell_cd);
    Player.stats[? "Stamina"] -= scr_get_spell().stats[? "Fatigue"];
} else {
    if (scr_check_btn(cast_btn)) {
        global.cast_mode = true;
        global.timescale = .1;
    } else if (scr_check_btn(menu_btn)) {
        with(View) {
            event_perform(ev_keypress,ord("I"));
        }
    
    } else if (scr_check_btn(minimap_btn)) {
        with(View) {
            event_perform(ev_keypress,ord("M"));
        }
        
    // Detect pickup button click
    } else if (nearest_drop != noone and scr_check_btn(nearest_btn)) {
        scr_send_to_inv(nearest_drop);
    }
}

