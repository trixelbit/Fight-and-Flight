/// @description Insert description here
// You can write your code in this editor
spawn_time = 15;
alarm[0] = spawn_time;
alarm[1] = random_range(20,60);
toggle = false; // 0 =  down; 1 = up

move = function(_dir)
{
	if(_dir > 0)
	{
		y += global.grid_snap;
	}
	else if (_dir < 0)
	{
		y -= global.grid_snap;
	}

}