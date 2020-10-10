/// @description Insert description here
// You can write your code in this editor
x += background_drawer.scroll_speed * -4
y = .2 * sin( 4 * ((current_time- origin_time)/1000)) + y;

if(x < -150)
{
	instance_destroy()
}


if ( place_meeting( x, y, enemy )
)
{
	instance_destroy();
}