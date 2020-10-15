/// @description Insert description here
// You can write your code in this editor

gravity_direction = 270;

if(vspeed > 0)
{
	gravity = .0;
	vspeed = 1;
	hspeed = 5 * sin( 2 * ((current_time - origin_time)/1000));
	
	
	if(hspeed > 0)
	{
		image_angle = image_angle < 60 ? image_angle + .5 : image_angle;

	}
	else
	{
		image_angle = image_angle > -60 ? image_angle - .5 : image_angle;
	}
	
	
	if(hspeed > 2)
	{
		sprite_index = spr_player_parachute_front;
	}
	else if(hspeed < -2)
	{
		sprite_index = spr_player_parachute_back;
	}
	else
	{
		sprite_index = spr_player_parachute_mid;
	}
	
	
	
	
}
else
{
	gravity = .5;
	sprite_index = spr_player_jump;
}


if(y > 600)
{
	instance_destroy();
}