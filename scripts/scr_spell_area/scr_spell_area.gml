///scr_spell_area()
var spell = instance_create_layer(mouse_x, mouse_y, "entities", Spell_Area);
spell.creator = Player.id;
