var inst = argument0;

scr_register_location(inst,spr_location_quest_new);
scr_init_quest(quest_id, quest_title, inst, quest_gold, quest_xp);

location_icon = spr_location_quest_new1;

ds_list_add(global.quest_givers,inst);
var cx = scr_chunk_coordinate(inst.x);
var cy = scr_chunk_coordinate(inst.y);
scr_chunk_add_record(cx,cy,"quest giver",inst);