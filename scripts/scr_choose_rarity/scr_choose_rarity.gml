/// @description scr_choose_rarity
/// @param 1_buff_chance...
var rarity = 0;

for (var i=0;i<argument_count;i++) {
	if (scr_chance(argument[i])) rarity = i+1;
}

return rarity;