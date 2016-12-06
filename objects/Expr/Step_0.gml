/// Move toward player
if (instance_exists(Player)) {
    phy_position_x += (Player.x - x) * .1  * global.timescale;
    phy_position_y += (Player.y - y) * .1 * global.timescale;
}

