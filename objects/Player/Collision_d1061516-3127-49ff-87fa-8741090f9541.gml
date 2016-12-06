/// Go through door

// Activate objects that need to persist
// They will automatically be deactivated again by the view after they've transitioned to the new room
scr_activate_inv();

instance_activate_object(Menu_Parent);
instance_activate_object(Time);

scr_setup_new_map(other.stats[? "New Room"]);
x = other.stats[? "New X"];
y = other.stats[? "New Y"];
View.x = other.stats[? "New X"];
View.y = other.stats[? "New Y"];
Time.x = other.stats[? "New X"];
Time.y = other.stats[? "New Y"];

