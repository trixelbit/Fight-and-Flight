// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_gates(){
	bottomgate.activated = true;
	topgate.activated = true;
	audio_play_sound(s_gate_motor, 100, 0);
}

function deactivate_gates(){
	bottomgate.activated = false;
	topgate.activated = false;
	audio_play_sound(s_gate_motor, 100, 0);
}