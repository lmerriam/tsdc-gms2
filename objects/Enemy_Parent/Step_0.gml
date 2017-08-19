/// Run current state
event_inherited();

if (ds_exists(stats,ds_type_map)) {
	// TODO: is this the right way to calculate it?
	spd_final = stats[? "Speed"] * (1-freeze_slow) *global.timescale
    percent = (stats[? "Health"] / stats[? "Max Health"]) * 100;
    script_execute(state);
}