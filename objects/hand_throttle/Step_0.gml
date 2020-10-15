/// @description Insert description here
// You can write your code in this editor

if(!active and image_index > 9)
{
	var _voice = choose( v_rev1, v_rev3, v_rev4 );
	audio_play_sound(_voice, 100, 0);
	audio_play_sound(s_rev, 50, 0);
	active =  true;
}