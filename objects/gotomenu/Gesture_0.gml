/// @description Insert description here
// You can write your code in this editor
if(!activated)
{
	// begin restart transition and flip switch
	alarm[0] = 30;
	image_index = 1;
	audio_play_sound(s_switch, 50, 0);
}