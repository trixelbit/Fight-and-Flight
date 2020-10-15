/// @description Insert description here
// You can write your code in this editor

if(activated)
{
	// top gate position
	if(y < -5)	
	{
		y += yspeed;
		
	}
	else
	{
		y = lerp(y, 0, .5);
	}
	
	// bottom gate position
	if(Y > 5)	
	{
		Y -= yspeed;
		
	}
	else
	{
		Y = lerp(Y, 0, .5);
	}
	
	yspeed += 2;

}
else
{
	y = lerp(y, -300, .1);
	Y = lerp(Y, 300, .1);

}






if(activated and y >  -3)
{
	if(!audio_is_playing(s_gateclank) and audio_is_playing(s_gate_motor))
	{
		audio_stop_sound(s_gate_motor);
		audio_play_sound(s_gateclank, 100, 0);
		yspeed = 1;
	}
}
else if (abs(y + 300) < 50)
{
	if(!audio_is_playing(s_gate_lock) and audio_is_playing(s_gate_motor))
	{
		audio_stop_sound(s_gate_motor);
		audio_play_sound(s_gate_lock, 100, 0);
		yspeed = 1;
	}

}