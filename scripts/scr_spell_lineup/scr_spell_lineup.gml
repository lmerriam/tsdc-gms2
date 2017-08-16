///scr_spell_lineup
for (i=1;i<=7;i++) {
    var dir = global.aim_dir;
    var len = 24*i;
    var xx = Player.x + lengthdir_x(len,dir);
    var yy = Player.y + lengthdir_y(len,dir);
    var spell = instance_create_layer(xx, yy, "entities", Spell_Lineup);
    spell.creator = Player.id;
    expire_timer = scr_sec_from_now(.25);
}
