/// @description Insert description here
// You can write your code in this editor

if(audio_group_is_loaded(agMusic) and audio_group_is_loaded(agSFX))
{
	audio_group_set_gain(agMusic, .2, 1);
	audio_group_set_gain(agSFX, .2, 1);
	audio_loaded = true;
	room_goto(MainMenu);
}