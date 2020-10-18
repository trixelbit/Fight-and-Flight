/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape))
{
	lives = 0;
}


if(lives <= 0)
{
	// death state
	if(!dead)
	{
		// on enter death state (execute once)
		if(image_alpha != 0)
		{
			var _i = instance_create_layer(x,y,"FX", particle);
			_i.sprite_index = spr_explosion;
			_i = instance_create_layer(x,y,"FX", particle);
			_i.sprite_index = spr_explosion;
			_i.x += random_range(-10, 10);
			_i.image_angle = random_range(0,360);
			_i = instance_create_layer(x,y,"FX", particle);
			_i.sprite_index = spr_explosion;
			_i.x += random_range(-10, 10);
			_i.image_angle = random_range(0,360);
		
		
			// spawns motor parts
			for(_i = 0; _i < 6; _i++)
			{
				var _temp = instance_create_layer(x,y,"FX", parts);
				_temp.image_index = _i;
				_temp.vspeed = random_range(-3, -8);
				_temp.hspeed += background_drawer.scroll_speed * 2 + random_range(-5,3);
			}
			
			var _temp = instance_create_layer(x,y,"FX", parachute);
			
			instance_deactivate_object(spawner);
			instance_deactivate_object(pause);
			
			background_drawer.og_scroll_speed = 0;
		
			image_alpha = 0;	
			
			audio_play_sound(s_explosion, 100, 0);
			audio_stop_sound(s_engine_idle);
			
			audio_group_stop_all(agVoices);
			var _vocal = choose(v_lose1, v_lose2, v_lose3, v_lose4, v_lose5, v_lose6, v_lose7, v_lose8);
			audio_play_sound(_vocal, 50, 0);
			
			update_scores();
			save_data();
			
		}
		
		dead = true;

	}
	
}
else
{

	if (keyboard_check_pressed(vk_up))
	{
		move_up();
	}
	else if(keyboard_check_pressed(vk_down))
	{
		move_down();
	}



	if(keyboard_check_pressed(vk_right))
	{
		move_dodge();
	}
	else if(keyboard_check_pressed(vk_left))
	{
		dash_attack();
	}
	


	if(attack)
	{
		image_alpha = .9;

		x -= 3;
	
		if(image_index > 10)
		{
			attack = false;
		}
		else if (image_index > 3 and instance_number(slash) < 1)
		{
			var _i = instance_create_layer(x,y,"FX", slash);
			_i.hspeed = .5;
		}
		
	}
	else if (!dodge and !attack)
	{
		image_xscale = lerp(image_xscale, 1, .1);
		image_yscale = image_xscale;
		
		part_particles_create( PartSystem, x - 25, y + 2, Smoke, 2);
		//instance_create_layer(x - 25, y + 2, "BackgroundEffects", smoke);
		//instance_create_layer(x - 25, y + 2, "BackgroundEffects", smoke);
	}

	if(dodge)
	{
		image_alpha = .9;
		image_xscale = lerp(image_xscale, 1.5, .1);
		image_yscale = image_xscale;
		x += 2;
	
		if(image_index > 10)
		{
			dodge = false;
		}
	}
	else if(!dodge and !attack)
	{

		image_xscale = lerp(image_xscale, 1, .1);
		image_yscale = image_xscale;

		part_particles_create( PartSystem, x - 25, y + 2, Smoke, 2);
		//instance_create_layer(x - 25, y + 2, "BackgroundEffects", smoke);
		//instance_create_layer(x - 25, y + 2, "BackgroundEffects", smoke);
		
	}

	image_angle = lerp(image_angle, 0, .2);
	x = lerp(x, target_x, .05);
	y = lerp(y, target_y, .4);


	// check if position snapped
	if( abs(y - target_y) < 5 )
	{
		is_position_snapped = true;
		y = target_y;
	
		if(!attack and !dodge)
		{
			sprite_index = sprite.idle;
			image_speed = 1;
		}

	}
	else
	{
		is_position_snapped = false;
	}
}

