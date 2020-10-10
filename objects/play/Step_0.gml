/// @description Insert description here
// You can write your code in this editor

if(!snapped)
{
	if(abs(x-xstart) < .5)
	{
		snapped = true;	
	}
	else
	{
		x = lerp(x, xstart, 0.2);
	}
}
else
{
	//x = .1 * sin( 3 * ((current_time)/1000)) + x;
	//y = .05 * sin( 3 * ((current_time)/1000)) + y;
}