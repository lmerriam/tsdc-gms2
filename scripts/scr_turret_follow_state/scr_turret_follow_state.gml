/// scr_turret_follow_state

if (instance_exists(Player)) {
    // Increment the follow point
    follow_point_angle += 2;
    
    // Set follow point
    follow_point_x = Player.x + lengthdir_x(follow_point_range,follow_point_angle);
    follow_point_y = Player.y + lengthdir_y(follow_point_range,follow_point_angle);
    
    phy_position_x += (follow_point_x - x) * .4;
    phy_position_y += (follow_point_y - y) * .4;
}
