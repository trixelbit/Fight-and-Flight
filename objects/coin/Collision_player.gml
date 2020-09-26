/// @description Insert description here
// You can write your code in this editor
if(!player.dead)
{
	score++;
	audio_play_sound(s_coin,1,0);
	instance_destroy();
}