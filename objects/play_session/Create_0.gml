/// @description Insert description here
// You can write your code in this editor
frame_count = 0
seconds = 0
minutes = 0

function digit() constructor
{
	//static variables
	start_scale = 1;
	start_angle = 0;
	
	
	value = 0;	
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
tens = new digit();
hundreds = new digit();
thousands = new digit();
