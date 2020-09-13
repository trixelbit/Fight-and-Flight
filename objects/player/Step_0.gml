/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x - 25, y + 2, "BackgroundEffects", smoke);


if (keyboard_check_pressed(vk_up))
{
	move_up();
}
else
if(keyboard_check_pressed(vk_down))
{
	move_down();
}



if(keyboard_check_pressed(vk_space) and !attack)
{
	dash_attack();
}


if(attack)
{
	if(image_index < 6)
	{

	}
	else
	{
		instance_create_layer(x,y, "BackgroundEffects", ghost);
		image_speed = 5;
		
		//background_drawer.scroll_speed = background_drawer.og_scroll_speed + 10;
		x += 32;
		attack_invuln = true;
		
		
		if( image_index >= 9 )
		{
			sprite_index = sprite.idle;
			image_speed = 1;

			attack_invuln = false;
			attack = false;
		}
	}
}


image_angle = lerp(image_angle, 0, .2);
x = lerp(x, target_x, .05);
y = lerp(y, target_y, .4);


// check if position snapped
if( abs(y - target_y) < 5 )
{
	is_position_snapped = true;
	y = target_y;
	
	if(!attack)
	{
		sprite_index = sprite.idle;
		image_speed = 1;
	}
	
}
else
{
	is_position_snapped = false;
}


