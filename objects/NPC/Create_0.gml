scr_register_npc(id);
scr_register_interactable(id);
state = scr_npc_idle;

dialog_standard = scr_dialog_init();
scr_dialog_set_text(dialog_standard,dialog_standard_text);