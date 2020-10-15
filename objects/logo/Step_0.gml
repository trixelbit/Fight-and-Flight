/// @description Insert description here
// You can write your code in this editor
x = lerp(x, xstart, 0.1);


image_angle = 5 * sin( 1 * ((current_time- origin_time)/1000)) ;


if(!played and !topgate.activated and !audio_is_playing(v_title2))
{
	audio_play_sound(v_title1, 100, 0);
	played = true
}

if(!intro_played and !audio_is_playing(m_menu_intro))
{
	audio_play_sound(m_menu_theme,100, true);
	intro_played = true;
}