/// Damage all life forms
event_inherited();

if (other.id != creator) { //Make sure the damage object doesn't damage the player
    instance_destroy();
}

