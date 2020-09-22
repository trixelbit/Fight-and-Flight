/// @description Insert description here
// You can write your code in this editor

// up
if (toggle)
{
	if(y = ystart - global.grid_snap)
	{
		alarm[1] = random_range(20,60);
		toggle = false;
	}
	else
	{
		move(-1);
		alarm[1] = 20;
	}
	
}
else
{
	if(y = ystart + global.grid_snap)
	{
		alarm[1] = random_range(20,60);
		toggle = true;
	}
	else
	{
		move(1);
		alarm[1] = 20;
	}
}