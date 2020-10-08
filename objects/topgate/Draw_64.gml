/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(spr_topgate, 0, x, y, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_bottomgate, 0, x, Y, 2, 2, 0, c_white, 1);
draw_set_color(c_black);
draw_rectangle(0,y,2000,-20, false);
draw_rectangle(0,Y + (270*2),2000,600, false);