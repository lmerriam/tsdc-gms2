/// @description Insert description here

if (scr_alarm_passed(timer) and global.attack_button ) {
	scr_complete_quest_phase(creator.quest,creator.phase_number);
	instance_destroy();
}