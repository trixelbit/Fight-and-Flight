/// @description Insert description here
// You can write your code in this editor

if(active)
{
	alpha = 1;
}
else
{
	alpha = lerp(alpha, 0, .05);	
}

x -= 60; 
x = x mod room_width;