/// @description Insert description here
// You can write your code in this editor
streak = 0;

spawn = function(_spawn_interval)
{
	if ( (current_time mod _spawn_interval) == 0 and streak < 2)
	{

		var temp = random_range(0,100);
		if( temp >= 30)
		{
			var Y = y + round( random_range(-1 , 1)) * 64;
	
			instance_create_layer( x, Y, "Instances", enemy);
		}
		
		streak++
	}
	else
	{
		streak = 0;
	}

}