/// @description Insert description here
// You can write your code in this editor
x += background_drawer.scroll_speed * -4


if(x < -150)
{
	instance_destroy()
}

if(player.dodge)
{
	image_alpha = lerp(image_alpha, .5, .1);
	image_xscale = lerp(image_xscale, .9, .1);
	//image_yscale = image_xscale;
}
else
{
	image_alpha = lerp(image_alpha, 1, .2);
	image_xscale = lerp(image_xscale, 1, .1);

}