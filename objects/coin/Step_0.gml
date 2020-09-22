/// @description Insert description here
// You can write your code in this editor
x += background_drawer.scroll_speed * -4


if(x < -150)
{
	instance_destroy()
}


if (place_meeting( x + 64, y, enemy ) or 
place_meeting( x - 64, y, enemy ) or 
place_meeting( x + 32, y, enemy ) or 
place_meeting( x - 32, y, enemy ) or 
place_meeting( x, y, enemy )
)
{
	instance_destroy();
}