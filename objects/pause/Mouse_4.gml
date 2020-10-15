/// @description Insert description here
// You can write your code in this editor
room_set_persistent(Room1, true);
audio_stop_sound(s_engine_idle);
audio_play_sound(v_pause1, 50, 0);
room_goto(pause_menu);