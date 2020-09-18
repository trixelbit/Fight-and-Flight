/// @description Insert description here

// player data
is_position_snapped = false;
target_x = x;
target_y = y;
lane = 1;
scroll_speed = 0;
invulnerable = false;
attack_invuln = false;
attack = false;

sprite = 
{
	idle : spr_player_idle,
	up : spr_player_up,
	down : spr_player_down,
	attack : spr_player_attack
	
};

// actions
move_up = function ()
{
	if (lane == 0)
	{
		return -1;
	}
	else if(attack)
	{
		lane--;
		target_y--;
		target_y -= global.grid_snap;
		return 0;
	}
	else
	{
		lane--;
		target_y--;
		target_y -= global.grid_snap;
		sprite_index = sprite.up;
		image_speed = 1;
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
	else if(attack)
	{
		lane++;
		target_y++;
		target_y += global.grid_snap;
		return 0;
	}
	else
	{
		lane++;
		target_y++;
		target_y += global.grid_snap;
		sprite_index = sprite.down;
		image_speed = 1;
		image_index = 0;
		return 0;
	}
}

dash_attack = function ()
{
	
	
	attack =  true;
	sprite_index = spr_player_attack;
	image_index = 6;
	image_speed =  8;
	
	
}



//input
input =
{
	up_pressed : keyboard_check_pressed(vk_up),
	down_pressed : keyboard_check_pressed(vk_down)
};



