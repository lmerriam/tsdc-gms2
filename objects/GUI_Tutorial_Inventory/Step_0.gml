if GUI.menu_step == scr_menu_inv_step {
	// create the equip tutorial
	instance_create_depth(Player.x,Player.y,-100,GUI_Tutorial_EquipFirstWeapon);
	instance_destroy();
}
