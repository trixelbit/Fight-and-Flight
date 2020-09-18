

function touch_input() constructor
{
	x = 0;
	y = 0;
	last_x = 0;
	last_y = 0;
	delta_x = 0;
	delta_y = 0;
	
	update = function(device_number)
	{
		last_x = x;
		last_y = y;
		x = device_mouse_x(device_number);
		y = device_mouse_y(device_number);
		delta_x = x - last_x;
		delta_y = y - last_y;
	}

	gesture_end = function()
	{
		
	}
}

