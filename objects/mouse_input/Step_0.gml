if(device_mouse_check_button_pressed(0,mb_left))
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
