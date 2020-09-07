/// @description Insert description here

// player data
is_position_snapped = false;
grid_snap = 64;
target_x = x;
target_y = y;
lane = 1;
scroll_speed = 0;
invulnerable = false;

sprite = 
{
	idle : spr_player_idle,
	up : spr_player_up,
	down : spr_player_down
};

// actions
move_up = function ()
{
	if (lane == 0)
	{
		return -1;
	}
	else
	{
		lane--;
		target_y--;
		target_y -= grid_snap;
		sprite_index = sprite.up;
		image_speed = 2;
		image_index = 0;
		return 0;
	}
}

move_down = function ()
{
	if (lane == 2)
	{
		return -1;
	}
	else
	{
		lane++;
		target_y++;
		target_y += grid_snap;
		sprite_index = sprite.down;
		image_speed = 2;
		image_index = 0;
		return 0;
	}
}




//input
input =
{
	up_pressed : keyboard_check_pressed(vk_up),
	down_pressed : keyboard_check_pressed(vk_down)
};



