/// @description Get color relevant to rarity
/// @param Rarity

var rarity = argument0;

var color = c_white;

switch(rarity) {
	case "Uncommon": color = c_aqua; break;
	case "Rare": color = c_lime; break;
	case "Epic": color = c_fuchsia; break;
}

return color;