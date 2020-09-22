

for(var i = 0; i < 1; i++ )
{
	if(device_mouse_check_button_pressed(i, mb_left))
	{
		inputs[i].active = true;
	}
	else if(device_mouse_check_button_released(i, mb_left))
	{
		inputs[i].reset();
		
	}
		
	if (device_mouse_check_button(i, mb_left))
	{
		inputs[i].update(i);
	}

}


if(inputs[0].active)
{


	if(inputs[0].y_speed < -touch_threshold )
	{
		with(player)
		{
			move_up();		
		}
		inputs[0].reset();
	}
	else if (inputs[0].y_speed > touch_threshold )
	{
		with(player)
		{
			move_down();
		}
	
		inputs[0].reset();	
	}
}
	

/*

if (device_mouse_check_button_pressed(0, mb_right) and !player.attack)
{
	with(player)
	{
		dash_attack();

	}
}

