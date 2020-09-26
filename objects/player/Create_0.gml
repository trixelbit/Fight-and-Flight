/// @description Insert description here
score = 0;
// player data
is_position_snapped = false;
target_x = x;
target_y = y;
lane = 1;
scroll_speed = 0;
invulnerable = false;
attack_invuln = false;
attack = false;
dodge = false;

audio_play_sound(s_engine_idle, 1, 1);


sprite = 
{
	idle : spr_player_idle,
	up : spr_player_up,
	down : spr_player_down,
	attack : spr_player_attack,
	dodge : spr_player_dodge
	
};

// actions
move_up = function ()
{
	if (lane == 0 or !is_position_snapped or dodge)
	{
		return -1;
	}
	else if(attack)
	{
		lane--;
		target_y--;
		target_y -= global.grid_snap;
		instance_create_layer(x,y,"FX", smoke_burst);
		audio_play_sound(s_engine_gas, 10, 0);
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
		instance_create_layer(x,y,"FX", smoke_burst);
		audio_play_sound(s_engine_gas, 10, 0);
		return 0;
	}
}

move_down = function ()
{
	if (lane == 2 or !is_position_snapped or dodge)
	{
		return -1;
	}
	else if(attack)
	{
		lane++;
		target_y++;
		target_y += global.grid_snap;
		audio_play_sound(s_engine_gas, 10, 0);
		var _i = instance_create_layer(x,y + 16,"FX", smoke_burst);
		_i.image_yscale = -1;
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
		audio_play_sound(s_engine_gas, 10, 0);
		var _i = instance_create_layer(x,y + 16,"FX", smoke_burst);
		_i.image_yscale = -1;
		return 0;
	}
}

move_dodge = function ()
{
	if(is_position_snapped and !dodge)
	{
		dodge = true;
		sprite_index = sprite.dodge;
		image_speed = 1.4;
		var _i = instance_create_layer(x,y,"FX", smoke_burst);
	}
	else
	{
		return -1;
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



