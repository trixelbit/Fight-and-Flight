/// @description Insert description here
// You can write your code in this editor




//hundreds
draw_sprite_ext(spr_numbers, hundreds.value, 480 - (32 * 3), 32, hundreds.xscale, hundreds.yscale, hundreds.angle, image_blend, 1);
// tens
draw_sprite_ext(spr_numbers, tens.value, 480 - (32 * 2), 32, tens.xscale, tens.yscale, tens.angle, image_blend, 1);
//singles
draw_sprite_ext(spr_numbers, ones.value, 480 - (32 * 1), 32, ones.xscale, ones.yscale, ones.angle, image_blend, 1);