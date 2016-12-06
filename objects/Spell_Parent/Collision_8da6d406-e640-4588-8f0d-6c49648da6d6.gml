/// Apply screen shake, blood
if (other.id != creator) {
    part_particles_create(global.particles_below, other.x, other.y, global.blood_particles, 10);
    
    // Shake the screen
    global.screen_shake += 3;
}

