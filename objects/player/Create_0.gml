/// @description Insert description here
score = 0;
health = 0;
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
dead = false;

#region Particle System Define
PartSystem = part_system_create();
Smoke = part_type_create();
part_type_sprite(Smoke, spr_smoke, true, false, false );
part_type_size(Smoke, .2,.2, .08, 0);
part_type_speed(Smoke, 5, 15, 0, 0);
part_type_direction(Smoke, 180 - 5, 180 + 5 , 0, 2);
part_type_life(Smoke,5, 10);

#endregion

audio_stop_sound(m_menu_theme);
audio_stop_sound(m_menu_intro);
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
	if (lane == 0 or !is_position_snapped or dodge or dead)
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
	if (lane == 2 or !is_position_snapped or dodge or dead)
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
	if(is_position_snapped and !dodge and !dead)
	{
		dodge = true;
		sprite_index = sprite.dodge;
		image_speed = 1.4;
		var _i = instance_create_layer(x,y,"FX", smoke_burst);
		audio_play_sound(s_engine_dodge, 100, 0);
		return 0;
	}
	else
	{
		return -1;
	}
}

dash_attack = function ()
{
	
	if(is_position_snapped and !dodge and !attack and !dead)
	{
		attack = true;
		sprite_index = sprite.dodge;
		image_speed = 1.4;
		var _i = instance_create_layer(x,y,"FX", smoke_burst);
		_i = choose(v_hit3, v_hit4, v_hit5, v_hit6, v_hit7, v_hit8, v_hit9);
		audio_play_sound(_i,50,0);
		
		audio_play_sound(s_engine_dodge, 100, 0);
		
		return 0;
	}
	else
	{
		return -1;
	}
}



//input
input =
{
	up_pressed : keyboard_check_pressed(vk_up),
	down_pressed : keyboard_check_pressed(vk_down)
};



