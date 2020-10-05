/// @description Insert description here
// You can write your code in this editor

if(activated)
{
	y = lerp(y, 0, .3);
	layer = layer_get_id("Transitions");
}
else
{
	y = lerp(y, -300, .1);
	layer = layer_get_id("Transitions");
}

if(activated)
{
	Y = lerp(Y, 0, .3);
	layer = layer_get_id("Transitions");
}
else
{
	Y = lerp(Y, 300, .1);
	layer = layer_get_id("Transitions");
}

draw_sprite_ext(spr_topgate, 0, x, y, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_bottomgate, 0, x, Y, 2, 2, 0, c_white, 1);