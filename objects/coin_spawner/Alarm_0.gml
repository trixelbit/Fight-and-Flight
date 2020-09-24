/// @description Insert description here
// You can write your code in this editor
var i = random_range(0,100)
if( i  < 99)
{
	instance_create_layer(x,y, "Enemies", coin);
}
else
{
	instance_create_layer(x,y, "Enemies", heart);
}

alarm[0] = spawn_time;