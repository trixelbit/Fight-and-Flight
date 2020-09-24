/// @description Insert description here
// You can write your code in this editor



alpha = 1;

//hundreds
alpha = score > 99 ? 1 : 0;
draw_sprite_ext(spr_numbers, hundreds.value, (room_width * 2) - (32 * 3), 32, hundreds.xscale, hundreds.yscale, hundreds.angle, image_blend, alpha);
// tens
alpha = score > 9 ? 1 : 0;
draw_sprite_ext(spr_numbers, tens.value, (room_width * 2) - (32 * 2), 32, tens.xscale, tens.yscale, tens.angle, image_blend, alpha);
//singles
alpha = 1;
draw_sprite_ext(spr_numbers, ones.value, (room_width * 2) - (32 * 1), 32, ones.xscale, ones.yscale, ones.angle, image_blend, alpha);