/// @description Insert description here
// You can write your code in this editor
x = -300;
image_angle = 0;
r_vel = 1;
origin_time = current_time
played = false;
intro_played = false;

if(!audio_is_playing(m_menu_theme))
{
	audio_play_sound(m_menu_intro, 1000,0);
}
else
{
	intro_played = true;
}