///scr_alarm_firing(time)
if (Time.now > argument0 and Time.now - argument0 <= global.timescale) {
    return true;
} else {
    return false;
}
