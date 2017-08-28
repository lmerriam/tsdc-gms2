// @description Spawn equipment
// @param spawn_x
// @param spawn_y
// @param equipment

var spawn_x = argument0;
var spawn_y = argument1;
var item_name = argument2;

// Spawn the equipment
var inst = instance_create_layer(spawn_x,spawn_y,"entities",Equipment_Parent);

// Get DS
var equipment = global.equipment[? item_name];
var props = scr_copy_drop_props(equipment[? "Properties"]);

// Assign properties
inst.properties = props;

// Create stats
props[? "Buffs"] = ds_map_create();

// Assign sprite
props[? "Sprite"] = asset_get_index(props[? "Sprite"]);
inst.sprite_index = props[? "Sprite"];

with (inst) { sprite_set_offset(sprite_index,sprite_width/2,sprite_height/2); }

// Type-specific prepping
switch(props[? "Type"]) {
	case "Weapon":
		props[? "Attack Script"] = asset_get_index(props[? "Attack Script"]);
		//script_execute(asset_get_index(props[? "Equip Script"]));
		break;
	case "Spell":
		props[? "Spell Script"] = asset_get_index(props[? "Spell Script"]);
		props[? "Spell State Step"] = asset_get_index(props[? "Spell State Step"]);
		props[? "Spell State Draw"] = asset_get_index(props[? "Spell State Draw"]);
		break;
	case "Armor":
		break;
	case "Gem":
		break;
}

//var roll = irandom(3);
var roll = scr_choose_rarity(0.25,1,0.1);
scr_buff_equipment(props,roll);

return inst;