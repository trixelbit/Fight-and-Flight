/// @description Insert description here
// You can write your code in this editor
var _temp = instance_create_layer(x,y, "FX", particle);
_temp.sprite_index = spr_explosion;
_temp.image_speed = 2;

score += 10;


#region audio
	_temp = random_range(0,100);
	if(_temp > 80)
	{
		audio_play_sound(v_hit1, 50, 0);
	}
	else if(_temp > 60)
	{
		audio_play_sound(v_hit2, 50, 0);
	}

	audio_play_sound(s_slash, 50, 0);
	audio_play_sound(s_coin, 50, 0);
#endregion

for(var i = 0; i < 3; i++)
{
	_temp = instance_create_layer(x,y, "FX", parts);
	_temp.sprite_index = spr_bot_parts;
	_temp.image_index = i;
	_temp.vspeed = random_range(-9,-3);
}


instance_destroy();