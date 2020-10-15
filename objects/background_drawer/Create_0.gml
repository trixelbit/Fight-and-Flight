/// @description Insert description here
// You can write your code in this editor
color = c_white;

background = function(_sprite, _xpercent, _ypercent) constructor
{
	sprite = _sprite;
	xoffset = 0;
	yoffset = -(1500-270);
	percent_x = _xpercent;
	percent_y = _ypercent;
}

backgrounds = array_create(5);
backgrounds[0] = new background(bg0, -.01 * 2, .008 * 2.5);
backgrounds[1] = new background(bg1, -.05 * 2, .01 * 2.5);
backgrounds[2] = new background(bg2, -.20 * 2, .02 * 2.5);
backgrounds[3] = new background(bg3, -.40 * 2, .04 * 2.5);
backgrounds[4] = new background(bg4, -3 * 2, .06 * 2.5);

/*
backgrounds[0] = new background(bg0, -.01 * 2, .008 * 2);
backgrounds[1] = new background(bg1, -.05 * 2, .01 * 2);
backgrounds[2] = new background(bg2, -.20 * 2, .02 * 2);
backgrounds[3] = new background(bg3, -.40 * 2, .04 * 2);
backgrounds[4] = new background(bg4, -3 * 2, .06 * 2);
*/

scroll_speed = .75;
og_scroll_speed = scroll_speed;

flash_alpha = 0;