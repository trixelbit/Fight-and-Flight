/// @description Insert description here
// You can write your code in this editor
background = function(_sprite, _xpercent, _ypercent) constructor
{
	sprite = _sprite;
	xoffset = 0;
	yoffset = -930;
	percent_x = _xpercent;
	percent_y = _ypercent;
}

backgrounds = array_create(5);
backgrounds[0] = new background(bg0, -.5, .01);
backgrounds[1] = new background(bg1, -.10, .02);
backgrounds[2] = new background(bg1, -.20, .04);
backgrounds[3] = new background(bg1, -.40, .08);
backgrounds[4] = new background(bg4, -3, .05);

scroll_speed = 1;

