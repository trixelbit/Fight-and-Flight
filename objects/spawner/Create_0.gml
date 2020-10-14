/// @description Insert description here
// You can write your code in this editor
streak = 0;
total_spawned = 10;
max_total_enemy = 25;
max_scroll_speed = 12;//20;
active = false


frame_length = 50;
alarm[0] = 1;

spawn_frame = function()
{
	var spike_spawned = false;
	var spawned_count = 0;
	var spawn_chance = random_range(0,100);
	
	if(active and total_spawned < max_total_enemy)//spawn_chance > 50)
	{
		for(var i = -1;  i < 2; i++)
		{
			var enemy_gen = random_range(0,100);
			if(spawned_count < 2)
			{
				// v lazer
				if( enemy_gen < 25 and !spike_spawned)
				{
					if(streak < 3)
					{
						if(streak < 3)
						var _y = i == 1 ? i = 0 : i;
						var temp = instance_create_layer(x, -32 + y + (_y * global.grid_snap), "Enemies", v_lazer);
						total_spawned++;
						streak++;
						break;	
					}
					else
					{
						streak = 0;
					}
				
				}
				else if( enemy_gen < 50 and !spike_spawned)
				{
					if(streak < 3)
					{
						var _y = random_range(0,100);
						var _y = _y > 50 ? -48 : 48;
						var temp = instance_create_layer(x, y + (_y), "Enemies", h_lazer);
						total_spawned++;
						streak++;
						break;
					}
					else
					{
						streak = 0;
					}
				}
				// spike
				else if ( enemy_gen < 75 )
				{
					var _y = y + (global.grid_snap * i);
					
					if (instance_number(enemy) <= 2 and streak < 2)
					{
						if(!place_meeting(x, _y, v_lazer) and 
							!place_meeting(x, _y - global.grid_snap, v_lazer) and 
							!place_meeting(x, _y + global.grid_snap, v_lazer))
						{
							var temp = instance_create_layer(x, _y, "Enemies", enemy);
							total_spawned++;
							streak++;
							spike_spawned = true;
						}
					}
					else if (enemy_gen < 90)
					{
						if(!place_meeting(x, _y, v_lazer) and 
							!place_meeting(x, _y - global.grid_snap, v_lazer) and 
							!place_meeting(x, _y + global.grid_snap, v_lazer))
						{
							var temp = instance_create_layer(x, _y, "Enemies", cone);
							total_spawned++;
						}
						
					}
					else
					{
						streak = 0;
					}
				}
				else
				{
					if(instance_number(coin_spawner) = 0)
					{
						var i = instance_create_layer(x, y, "Enemies", coin_spawner);
						i.alarm[2] = random_range(60, 240);
					}					
				}
			}
		}
	}
	else if(active)
	{
		active = false;
		var i = instance_create_layer(x, y, "Enemies", coin_spawner);
		i.alarm[2] = random_range(60, 240);
		speedlines.active = true;
		audio_play_sound(s_enginespeedup,50, 0);
		//audio_play_sound(s_letpickupthepace,50, 0);
		instance_create_layer(0,0, "UI", hand_throttle);
	}
	else if ( total_spawned < 1)
	{
		active = true;
		speedlines.active = false;
		
	}
	else
	{
		total_spawned -= 15;
		background_drawer.og_scroll_speed = lerp(background_drawer.og_scroll_speed , max_scroll_speed, .02);//.01);
		//background_drawer.og_scroll_speed += .2;	
	}
}


