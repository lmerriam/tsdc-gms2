if (mouse_check_button_released(mb_left) and scr_mouse_over_ui(GUI.eqp_btn_x1,GUI.eqp_btn_y1,GUI.eqp_btn_x2,GUI.eqp_btn_y2)) {
	//instance_create_layer(GUI.eqp_btn_x1,GUI.eqp_btn_y1,"system_objects",Event_Tutorial_EquipFirstWeapon);                             
	instance_create_layer(0,0,"system_objects",Event_Tutorial_CloseInventory);
	instance_destroy();
}