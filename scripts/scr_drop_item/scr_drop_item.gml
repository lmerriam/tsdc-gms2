/// scr_drop_item(obj)
var dropped = argument[0];
global.drag_item = noone;
instance_activate_object(dropped);
dropped.persistent = false;
dropped.phy_position_x = Player.x;
dropped.phy_position_y = Player.y;
with (dropped) physics_apply_local_impulse(choose(-3,3),choose(-3,3),choose(-3,3),choose(-3,3));
