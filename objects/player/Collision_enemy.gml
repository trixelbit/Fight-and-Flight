/// @description Insert description here
// You can write your code in this editor
if(!invulnerable and !dodge and !dead)
{
	invulnerable = true;
	lives--;
	image_alpha = .5;
	alarm[0] = 60;
	var i = instance_create_layer(x,y,"FX", particle);
	i.sprite_index =  spr_spark1;
	i.image_speed = 1.5;
	i.image_angle =  random_range(0, 359);
	i.image_xscale =  random_range(0, 100) > 50 ? -1 : 1;
	i.image_yscale =  random_range(0, 100) > 50 ? -1 : 1;
	image_angle = random_range(-70, 70);
	x -= 20;
	
	background_drawer.flash_alpha = .8;
	
	var _i = choose(v_hurt1, v_hurt2, v_hurt3, v_hurt4, v_hurt5, v_hurt6, v_hurt7, v_hurt8, v_hurt9);
	audio_play_sound(_i, 50, 0);
	audio_play_sound(s_hit,1,0);


}