/// Collide

other.phy_speed_x = phy_speed_x;
other.phy_speed_y = phy_speed_y;

scr_damage(other,damage);

scr_bloodspot(other.x,other.y,0.5);

var arrow = instance_create_layer(x,y,"entities",Attack_Arrow_Inactive);
arrow.image_angle = image_angle;
arrow.inst = other.id;
arrow.x_offset = x-other.x;
arrow.y_offset = y-other.y;

instance_destroy();