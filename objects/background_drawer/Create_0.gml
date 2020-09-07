/// @description Insert description here
// You can write your code in this editor
background = function(_sprite, _xpercent, _ypercent) constructor
{
	sprite = _sprite;
	xoffset = 0;
	yoffset = -(1500-270);
	percent_x = _xpercent;
	percent_y = _ypercent;
}

backgrounds = array_create(5);
backgrounds[0] = new background(bg0, -.01, .008);
backgrounds[1] = new background(bg1, -.05, .01);
backgrounds[2] = new background(bg2, -.20, .02);
backgrounds[3] = new background(bg3, -.40, .04);
backgrounds[4] = new background(bg4, -3, .06);

scroll_speed = 6;
og_scroll_speed = scroll_speed;

