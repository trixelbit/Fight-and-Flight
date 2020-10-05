/// @description Insert description here
// You can write your code in this editor
if(global.sound_toggle)
{
	audio_group_set_gain(agSFX, global.sound_volume, 1);
	image_alpha = 1;
}
else
{
	audio_group_set_gain(agSFX, 0, 1);
	image_alpha = .5;
}