/// @description Insert description here
// You can write your code in this editor

if(active)
{
	alpha = lerp(alpha, 1, .1);
}
else
{
	alpha = lerp(alpha, 0, .05);	
}

x -= 60 + background_drawer.scroll_speed; 
x = x mod room_width;