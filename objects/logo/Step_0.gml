/// @description Insert description here
// You can write your code in this editor
x = lerp(x, xstart, 0.2);


if(image_angle > 10)
{
	r_vel = lerp(r_vel, 0, .1)
}
else if(image_angle < -10)
{
	r_vel = lerp(r_vel, 0, .1)
}

else
{
	//r_vel = lerp(r_vel, 0, .1)
	if(image_angle > 0)
	{
		r_acc = -.1;
	}
	else if(image_angle < 0)
	{
		r_acc = .1;
	}
}




r_vel += r_acc;

image_angle += r_vel;