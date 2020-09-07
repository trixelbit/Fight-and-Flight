/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_up))
{
	move_up();
}
else
if(keyboard_check_pressed(vk_down))
{
	move_down();
}



if(keyboard_check_pressed(vk_space))
{
	
	background_drawer.scroll_speed = 25;
}


background_drawer.scroll_speed = lerp(background_drawer.scroll_speed, 8, .08);


x = lerp(x, target_x, .2);
y = lerp(y, target_y, .2);


// check if position snapped
if(abs(x - target_x) < 3 and abs(y - target_y) < 3 )
{
	is_position_snapped = true;
	sprite_index = sprite.idle;
	image_speed = 1;
}
else
{
	is_position_snapped = false;
}


