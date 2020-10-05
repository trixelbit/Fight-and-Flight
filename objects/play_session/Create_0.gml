/// @description Insert description here
// You can write your code in this editor
frame_count = 0
seconds = 0
minutes = 0
score_xoffset = 64;
lerp_speed = .1;
max_scale = 8;

audio_stop_sound(m_phase1);
audio_stop_sound(m_phase2);
audio_play_sound(m_phase1,1000, 0);

function digit() constructor
{
	//static variables
	start_scale = 2;
	start_angle = 0;
	
	
	value = 0;
	x = 0;
	y = 0;
	xscale = 1;
	yscale = 1;
	angle = 0;
	
	
	function update(_value)
	{
		if(_value != value)
		{
			xscale *= 2;
			yscale *= 2;
			angle = random_range(-30, 30);
		}
		value = _value;
		xscale = lerp(xscale, start_scale, .2);
		yscale = lerp(yscale, start_scale, .2);
		angle = lerp(angle, start_angle, .2);
	}
	
};


ones = new digit();
ones.x = (room_width * 2) - (32 * 1) - score_xoffset;
ones.y = 32;

tens = new digit();
tens.x = (room_width * 2) - (32 * 2) - score_xoffset;
tens.y = 32;

hundreds = new digit();
hundreds.x = (room_width * 2) - (32 * 3) - score_xoffset;
hundreds.y = 32;

thousands = new digit();
thousands.x = (room_width * 2) - (32 * 4) - score_xoffset;
thousands.y = 32;
