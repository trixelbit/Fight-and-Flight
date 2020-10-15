/// @description Insert description here
// You can write your code in this editor
frame_count++;
seconds = (frame_count mod 30);
minutes = frame_count mod  1800;
var x_offset = 20;
//audio managing
if(!audio_is_playing(m_phase1) and !audio_is_playing(m_phase2))
{
	audio_play_sound(m_phase2,1000, 1);
}

// lose state
if(lives <= 0)
{
	//activate UI objects
	instance_activate_object(retry);
	instance_activate_object(gotomenu);
	
	
	//move digits
	ones.xscale = lerp(ones.xscale, max_scale, lerp_speed);
	ones.yscale = ones.xscale;
	ones.angle = 0;
	ones.x = (room_width) - (32 * 1 * ones.xscale / 2) + x_offset;
	ones.y = lerp(ones.y, room_height, lerp_speed);

	tens.xscale = lerp(tens.xscale, max_scale, lerp_speed);
	tens.yscale = tens.xscale;
	tens.x = (room_width) - (32 * 2 * tens.xscale / 2) + x_offset;
	tens.y = lerp(tens.y, room_height, lerp_speed);
	tens.angle = 0;
	
	hundreds.xscale = lerp(hundreds.xscale, max_scale, lerp_speed);
	hundreds.yscale = hundreds.xscale;
	hundreds.x = (room_width) - (32 * 3 * hundreds.xscale / 2) + x_offset;
	hundreds.y = lerp(hundreds.y, room_height, lerp_speed);
	hundreds.angle = 0;

	thousands.xscale = lerp(thousands.xscale, max_scale, lerp_speed);
	thousands.yscale = thousands.xscale;
	thousands.x = (room_width) - (32 * max_scale * thousands.xscale / 2) + x_offset;
	thousands.y = lerp(thousands.y, room_height, lerp_speed);
	thousands.angle = 0;
	

	
}
else
{
	ones.update(score mod 10);
	tens.update(score > 9 ? floor((score mod 100) / 10) : 0);
	hundreds.update(score > 99 ? floor((score mod 1000) / 100) : 0);
	thousands.update(score > 999 ? floor((score mod 10000) / 1000)  : 0);
}


