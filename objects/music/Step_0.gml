/// @description Insert description here
// You can write your code in this editor
if(global.music_toggle)
{
	audio_group_set_gain(agMusic, global.music_volume, 1);
	image_alpha = 1;
}
else
{
	audio_group_set_gain(agMusic, 0, 1);
	image_alpha = .5;
}