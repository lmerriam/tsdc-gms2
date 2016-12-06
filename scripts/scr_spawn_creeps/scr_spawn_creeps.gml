///scr_spawn_creeps()
var num_creeps = 5 + stats[? "Level"] * 2;

repeat (num_creeps) {
    var spawn_x = irandom_range(64,room_width-64);
    var spawn_y = irandom_range(64,room_height-64);
    instance_create(spawn_x,spawn_y,Slime);
}
