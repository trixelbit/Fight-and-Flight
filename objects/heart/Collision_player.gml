/// @description Insert description here
// You can write your code in this editor



// when lives are not full
if(lives < 3 and !player.dead)
{
	lives++;
	with(player)
	{
		var _i = instance_create_layer(x,y,"FX", particle);
		_i.sprite_index = spr_lifeup_ef;
		_i.image_xscale = 1.2;
		_i.image_yscale = 1.2;
		audio_play_sound(s_getheart,1,0);
	}
}




instance_destroy();