/// Destroy on 0 health
event_inherited();

if stats[? "Health"] <=0 instance_destroy();

