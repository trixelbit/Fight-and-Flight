/// @description Insert description here
// You can write your code in this editor
if(!invulnerable and !attack_invuln and !dead)
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
	with(other)
	{
		instance_destroy();
	}
}
if(attack_invuln)
{
	with(other)
	{
		instance_destroy();
	}
}