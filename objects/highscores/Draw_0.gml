/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0, x,y);

if(activated)
{
	board_x = lerp(board_x, 0, .2)
	draw_sprite_ext(spr_clipboard, 0, board_x, board_y, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_gray);
	draw_set_font(Font1);
	for(var i = 0; i < 10; i++)
	{
		draw_text( board_x + 170 , 73 + (i * 20), string(i + 1) + " : " + string( global.scores[i] ));
	}
}
else
{

	board_x = lerp(board_x, 1000, .08)
	draw_sprite_ext(spr_clipboard, 0, board_x, board_y, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_gray);
	draw_set_font(Font1);
	for(var i = 0; i < 10; i++)
	{
		draw_text( board_x + 170 , 73 + (i * 20), string(i + 1) + " : " + string( global.scores[i] ));
	}
}

