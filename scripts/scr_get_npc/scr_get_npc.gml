var name = argument0;

for (var i = 0; i<ds_list_size(global.npcs); i++) {
	var npc = global.npcs[| i];
	if npc.npc_name == name return npc;
}

return noone;