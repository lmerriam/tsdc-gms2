// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // Expr
global.__objectDepths[1] = 0; // Particles
//global.__objectDepths[2] = -1000; // Dialog_Box
global.__objectDepths[3] = -10; // Player
global.__objectDepths[4] = 0; // Door
global.__objectDepths[5] = 0; // Speaker_Parent
global.__objectDepths[6] = 0; // View
global.__objectDepths[7] = 0; // GUI
global.__objectDepths[8] = 0; // Time
global.__objectDepths[9] = 0; // Drop_Parent
global.__objectDepths[10] = 0; // Spawn_Button
global.__objectDepths[12] = 0; // Location
global.__objectDepths[13] = 0; // Powerup_Parent
global.__objectDepths[14] = 0; // Drop_Scroll_Parent
global.__objectDepths[15] = 0; // Attack_Radius_Parent
global.__objectDepths[16] = 0; // Lifeform_Parent
global.__objectDepths[17] = 0; // Announcement
global.__objectDepths[18] = 0; // Attack_Radius_Large
global.__objectDepths[19] = 0; // Drop_Armor_Parent
global.__objectDepths[20] = 0; // Attack_Radius
global.__objectDepths[21] = 0; // Drop_Gem_Parent
global.__objectDepths[22] = 0; // Attack_Radius_Medium
global.__objectDepths[23] = 0; // Drop_Weapon_Parent
global.__objectDepths[24] = 0; // Gem_Freeze
global.__objectDepths[25] = 0; // Gem_Burn
global.__objectDepths[26] = 0; // Weapon_Pistol
global.__objectDepths[27] = 0; // Weapon_Shotgun
global.__objectDepths[28] = 0; // Weapon_Hammer
global.__objectDepths[29] = 0; // Scroll_Projectile
global.__objectDepths[30] = 0; // Scroll_Lineup
global.__objectDepths[31] = 0; // Scroll_Column
global.__objectDepths[32] = 0; // Scroll_Cone
global.__objectDepths[33] = 0; // Scroll_Blink
global.__objectDepths[34] = 0; // Scroll_Area
global.__objectDepths[35] = 0; // Weapon_SMG
global.__objectDepths[36] = 0; // Weapon_Bomb
global.__objectDepths[37] = 0; // Scroll_Vorpal
global.__objectDepths[38] = 0; // Weapon_Blade
global.__objectDepths[39] = 0; // Gem_Combust
global.__objectDepths[40] = 0; // Enemy_Spawner
global.__objectDepths[41] = 0; // Attack_Parent
global.__objectDepths[42] = 10; // Enemy_Parent
global.__objectDepths[43] = 0; // Attack_Bullet
global.__objectDepths[44] = 0; // Scroll_Cone_Pull
global.__objectDepths[45] = 0; // Attack_Bomb
global.__objectDepths[46] = 0; // Armor_Heavy
global.__objectDepths[47] = 10; // Slime_2
global.__objectDepths[48] = 0; // Spell_Cone
global.__objectDepths[49] = 0; // Attack_Hammer
global.__objectDepths[50] = 0; // Spell_Projectile
global.__objectDepths[51] = 0; // Spell_Lineup
global.__objectDepths[52] = 0; // Spell_Vorpal_Emitter
global.__objectDepths[53] = 0; // Spell_Column
global.__objectDepths[54] = 0; // Spell_Area
global.__objectDepths[55] = 10; // Enemy_Boss_Slime
global.__objectDepths[56] = 10; // Slime
global.__objectDepths[57] = 0; // Spell_Parent
global.__objectDepths[58] = 0; // Sign
global.__objectDepths[60] = 0; // Health
global.__objectDepths[61] = 0; // Tree
global.__objectDepths[63] = 0; // Teleporter
global.__objectDepths[65] = 0; // Spell_Turret
global.__objectDepths[66] = 1; // Chest
global.__objectDepths[67] = 0; // Barrel
global.__objectDepths[68] = 0; // Wall
global.__objectDepths[70] = 0; // Spell_Cone_Pull
global.__objectDepths[74] = 0; // Stronghold_1
global.__objectDepths[75] = 0; // Outpost_Parent
global.__objectDepths[76] = 0; // Stronghold_Parent


global.__objectNames[0] = "Expr";
global.__objectNames[1] = "Particles";
//global.__objectNames[2] = "Dialog_Box";
global.__objectNames[3] = "Player";
global.__objectNames[4] = "Door";
global.__objectNames[5] = "Speaker_Parent";
global.__objectNames[6] = "View";
global.__objectNames[7] = "GUI";
global.__objectNames[8] = "Time";
global.__objectNames[9] = "Drop_Parent";
global.__objectNames[10] = "Spawn_Button";
global.__objectNames[12] = "Location";
global.__objectNames[13] = "Powerup_Parent";
global.__objectNames[14] = "Drop_Scroll_Parent";
global.__objectNames[15] = "Attack_Radius_Parent";
global.__objectNames[16] = "Lifeform_Parent";
global.__objectNames[17] = "Announcement";
global.__objectNames[18] = "Attack_Radius_Large";
global.__objectNames[19] = "Drop_Armor_Parent";
global.__objectNames[20] = "Attack_Radius";
global.__objectNames[21] = "Drop_Gem_Parent";
global.__objectNames[22] = "Attack_Radius_Medium";
global.__objectNames[23] = "Drop_Weapon_Parent";
global.__objectNames[24] = "Gem_Freeze";
global.__objectNames[25] = "Gem_Burn";
global.__objectNames[26] = "Weapon_Pistol";
global.__objectNames[27] = "Weapon_Shotgun";
global.__objectNames[28] = "Weapon_Hammer";
global.__objectNames[29] = "Scroll_Projectile";
global.__objectNames[30] = "Scroll_Lineup";
global.__objectNames[31] = "Scroll_Column";
global.__objectNames[32] = "Scroll_Cone";
global.__objectNames[33] = "Scroll_Blink";
global.__objectNames[34] = "Scroll_Area";
global.__objectNames[35] = "Weapon_SMG";
global.__objectNames[36] = "Weapon_Bomb";
global.__objectNames[37] = "Scroll_Vorpal";
global.__objectNames[38] = "Weapon_Blade";
global.__objectNames[39] = "Gem_Combust";
global.__objectNames[40] = "Enemy_Spawner";
global.__objectNames[41] = "Damage_Parent";
global.__objectNames[42] = "Enemy_Parent";
global.__objectNames[43] = "Attack_Bullet";
global.__objectNames[44] = "Scroll_Cone_Pull";
global.__objectNames[45] = "Attack_Bomb";
global.__objectNames[46] = "Armor_Heavy";
global.__objectNames[47] = "Slime_2";
global.__objectNames[48] = "Spell_Cone";
global.__objectNames[49] = "Attack_Hammer";
global.__objectNames[50] = "Spell_Projectile";
global.__objectNames[51] = "Spell_Lineup";
global.__objectNames[52] = "Spell_Vorpal_Emitter";
global.__objectNames[53] = "Spell_Column";
global.__objectNames[54] = "Spell_Area";
global.__objectNames[55] = "Enemy_Boss_Slime";
global.__objectNames[56] = "Slime";
global.__objectNames[57] = "Spell_Parent";
global.__objectNames[58] = "Sign";
global.__objectNames[60] = "Health";
global.__objectNames[61] = "Tree";
global.__objectNames[63] = "Teleporter";
global.__objectNames[65] = "Spell_Turret";
global.__objectNames[66] = "Chest";
global.__objectNames[67] = "Barrel";
global.__objectNames[68] = "Wall";
global.__objectNames[70] = "Spell_Cone_Pull";
global.__objectNames[74] = "Stronghold_1";
global.__objectNames[75] = "Outpost_Parent";
global.__objectNames[76] = "Stronghold_Parent";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	if is_string(global.__objectNames[i]) {
		var objID = asset_get_index( global.__objectNames[i] );
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	}
} // end for