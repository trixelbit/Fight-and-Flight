/// @description Insert description here
// You can write your code in this editor

if(room == MainMenu)
{
	activate_gates();
	alarm[0] = global.transition_time;
}
else
{
	audio_play_sound(s_engine_idle, 50, true);
	room_goto(Room1);
}

