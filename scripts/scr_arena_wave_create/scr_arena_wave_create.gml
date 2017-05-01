waves = ds_list_create();

var wave1 = ds_map_create();
wave1[? "Slime"] = 3;
waves[| 1] = wave1;

var wave2 = ds_map_create();
wave2[? "Slime"] = 5;
wave2[? "Slime2"] = 2;
waves[| 2] = wave2;

var wave3 = ds_map_create();
wave3[? "Slime"] = 10;
wave3[? "Slime2"] = 3;
wave3[? "Slime"] = 3;
waves[| 3] = wave3;