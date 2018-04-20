/// @description Insert description here

if (scr_alarm_passed(timer) and global.player_speed_x > 0 or global.player_speed_y > 0 ) {
	scr_complete_quest_phase(creator.quest,creator.phase_number);
	instance_destroy();
}