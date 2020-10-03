/// @description Insert description here
// You can write your code in this editor



alpha = 1;

//hundreds
alpha = score > 99 ? 1 : 0;
draw_sprite_ext(spr_numbers, hundreds.value, hundreds.x, hundreds.y, hundreds.xscale, hundreds.yscale, hundreds.angle, image_blend, alpha);
// tens
alpha = score > 9 ? 1 : 0;
draw_sprite_ext(spr_numbers, tens.value, tens.x, tens.y, tens.xscale, tens.yscale, tens.angle, image_blend, alpha);
//singles
alpha = 1;
draw_sprite_ext(spr_numbers, ones.value, ones.x , ones.y, ones.xscale, ones.yscale, ones.angle, image_blend, alpha);


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