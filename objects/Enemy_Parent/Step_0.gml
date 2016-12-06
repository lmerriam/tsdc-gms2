/// Run current state
event_inherited();
if (ds_exists(stats,ds_type_map)) {
    percent = (stats[? "Health"] / stats[? "Max Health"]) * 100;
    script_execute(state);
}

