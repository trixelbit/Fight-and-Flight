/// @description Insert description here
// You can write your code in this editor
x = lerp(x, xstart, 0.2);


if( board_x < 100 and device_mouse_check_button_pressed(0, mb_left))
{
	activated = false;
	audio_play_sound(s_pageslide, 50, 0);
}