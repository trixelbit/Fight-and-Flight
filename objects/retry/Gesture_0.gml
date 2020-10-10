/// @description Insert description here
// You can write your code in this editor
if(!activated)
{
	// begin restart transition and flip switch
	room_persistent = false;
	alarm[0] = global.transition_time;;
	image_index = 1;
	audio_play_sound(s_switch, 50, 0);
	activate_gates();
	global.score_placement = -1;
	
}