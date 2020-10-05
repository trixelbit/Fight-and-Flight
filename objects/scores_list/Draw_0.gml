/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);

for(var i = 0; i < 10; i++)
{
	draw_text(x, y + (i * 15), string(i + 1) + " : " + string( global.scores[i] ));
}