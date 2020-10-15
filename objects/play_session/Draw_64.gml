/// @description Insert description here
// You can write your code in this editor

if(!topgate.activated)
{

	if(global.score_placement <= 3 and global.score_placement >= 1)
	{
		var _x = 0;
	
		if(score > 999 )
		{
			_x = hundreds.x + ((ones.x - tens.x) / 2);
		}
		else if(score > 99 )
		{
			_x = tens.x ;
		}
		else if(score > 9 )
		{
			_x = tens.x + ((ones.x - tens.x) / 2);
		}
		else
		{
			_x = ones.x ;
		}
	
		draw_sprite_ext(spr_crowns, global.score_placement - 1, _x, ones.y, 4, 4,0,c_white, 1);
	}


	#region digits

	//thousands
	alpha = score > 999 ? 1 : 0;
	draw_sprite_ext(spr_numbers, thousands.value, thousands.x, thousands.y, thousands.xscale, thousands.yscale, thousands.angle, image_blend, alpha);
	//hundreds
	alpha = score > 99 ? 1 : 0;
	draw_sprite_ext(spr_numbers, hundreds.value, hundreds.x, hundreds.y, hundreds.xscale, hundreds.yscale, hundreds.angle, image_blend, alpha);
	// tens
	alpha = score > 9 ? 1 : 0;
	draw_sprite_ext(spr_numbers, tens.value, tens.x, tens.y, tens.xscale, tens.yscale, tens.angle, image_blend, alpha);
	//singles
	alpha = 1;
	draw_sprite_ext(spr_numbers, ones.value, ones.x , ones.y, ones.xscale, ones.yscale, ones.angle, image_blend, alpha);
	#endregion



	#region lives
	for( i = -1; i < 2; i++ )
	{
		draw_sprite_ext(spr_heart, 0 , (room_width) + (64 * i), 32, 2.2, 2.2, 0, c_black, 1);
	}
	for( i = -1; i < lives - 1; i++ )
	{
		var _x_offset = floor(random_range(0,.99) * (3 / lives));
		var _y_offset = floor(random_range(0,.99) * (3 / lives));
		draw_sprite_ext(spr_heart, 0 , (room_width) + (64 * i) + _x_offset, 32 + _y_offset, 2, 2, 0, c_white, 1);
	}

	#endregion
	
}