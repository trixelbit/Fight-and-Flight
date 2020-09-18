
/*
for(var i = 0; i < 1; i++ )
{
	if (device_mouse_check_button(i, mb_left))
	{
		if( counter < global.gesture_time_frame )
		{
			inputs[i].update(i);
			counter++
		}
		else
		{
			inputs[i].update(i);
			counter = 0;
		}
		
	}
	else
	{
		inputs[i].reset();
	}
	
	if(inputs[i].delta_y < -touch_threshold)
	{
		with(player)
		{
			move_up();
		}
	}
	else if (inputs[i].delta_y > touch_threshold)
	{
		with(player)
		{
			move_down();
		}
	}
}




/*
if(  )
{
	if(device_mouse_y(0) <  player.y - touch_threshold )
	{
		with(player)
		{

			move_up();

		}
	}
	else if (device_mouse_y(0) >  player.y + touch_threshold)
	{
		with(player)
		{

			move_down();

		}
		
	}
	
}


if (device_mouse_check_button_pressed(0, mb_right) and !player.attack)
{
	with(player)
	{
		dash_attack();

	}
}
/// @description Insert description here
// You can write your code in this editor
