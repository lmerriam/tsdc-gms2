/// Rotate and set alarm
event_inherited();
phy_rotation = global.aim_dir;
expire_timer = scr_sec_from_now(2);

var spell = scr_get_spell();
knockback = ds_map_find_value(spell[? "Stats"],"Spell Knockback");
damage = scr_get_instance_stat(Player,"Spell Damage");

start_x = x;
start_y = y;