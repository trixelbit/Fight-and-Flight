/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0, x,y);

if(activated)
{
	board_x = lerp(board_x, 0, .2)
	draw_sprite_ext(spr_clipboard, 0, board_x, board_y, 1, 1, 0, c_white, 1);
	

}
else
{

	board_x = lerp(board_x, 1000, .08)
	draw_sprite_ext(spr_clipboard, 0, board_x, board_y, 1, 1, 0, c_white, 1);
	
}

draw_set_color(c_gray);

var line_space = 0;
var left_offset = 200
for(var i = 0; i < 10; i++)
{
	if( i = 0)
	{
		draw_set_halign(fa_center);
		draw_set_font(Font1);
		draw_text( board_x + left_offset , board_y + 95 + line_space, string(i + 1));
		draw_set_halign(fa_left);
		draw_text( board_x + 180 + 80 , board_y + 95 + line_space, string( global.scores[i] ));
		line_space += font_get_size(Font1) * 1.5;
		
	}
	else if( i < 3)
	{
		draw_set_halign(fa_center);
		draw_set_font(Font2);
		draw_text( board_x + left_offset , board_y + 95 + line_space, string(i + 1));
		draw_set_halign(fa_left);
		draw_text( board_x + 180 + 80 , board_y + 95 + line_space, string( global.scores[i] ));
		line_space += font_get_size(Font2) * 1.5;
	}
	else
	{
		draw_set_halign(fa_center);
		draw_set_font(Font3);
		draw_text( board_x + left_offset , board_y + 95 + line_space, string(i + 1));
		draw_set_halign(fa_left);
		draw_text( board_x + 180 + 80 , board_y + 95 + line_space, string( global.scores[i] ));
		line_space += font_get_size(Font3) * 1.5;
	}
	

	
	

}




