var quantity = other.properties[? "Quantity"];
properties[? "Gold"] += quantity;
part_particles_create(global.particles_above,other.x,other.y,global.bulletspark_particles,10);

instance_destroy(other);