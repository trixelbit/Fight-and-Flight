/// @description Insert description here
// You can write your code in this editor

for(i = 0; i < 5; i++)
{
	var current_bg =  backgrounds[i];
	
	current_bg.xoffset = ((scroll_speed * current_bg.percent_x) + current_bg.xoffset) mod 480;
	
	current_bg.yoffset += scroll_speed * current_bg.percent_y;
	
	draw_sprite(current_bg.sprite , 0, 
		0 + current_bg.xoffset,  
		0 + current_bg.yoffset
		);

	draw_sprite(current_bg.sprite , 0, 
		0 + current_bg.xoffset + 480,  
		0 + current_bg.yoffset
		);
	draw_sprite(current_bg.sprite , 0, 
		0 + current_bg.xoffset - 480,  
		0 + current_bg.yoffset
		);
	draw_sprite(current_bg.sprite , 0, 
		0 + current_bg.xoffset + (480 * 2),  
		0 + current_bg.yoffset
		);
	draw_sprite(current_bg.sprite , 0, 
		0 + current_bg.xoffset - (480 * 2),  
		0 +  current_bg.yoffset
		);
	
}
/*
draw_set_alpha(flash_alpha);
draw_set_color(color);
draw_rectangle(-32, -32,632,310, false);
draw_set_alpha(1);

/*
// adjust background color
var current_color = draw_getpixel(room_width/2, room_height/2);
color =  make_color_hsv
(
	lerp(color_get_hue(color), color_get_hue(current_color), .1 ),
	lerp(color_get_saturation(color), color_get_saturation(current_color), .1 ),
	lerp(color_get_value(color), color_get_value(current_color), .1 )
)


gpu_set_blendmode(bm_add);
draw_set_alpha(.1);
draw_set_color( color);
draw_rectangle( 
	camera_get_view_x( view_get_camera(view_camera[0])), 
	camera_get_view_y( view_get_camera(view_camera[0])),
	room_width,
	room_height,
	0);

gpu_set_blendmode(bm_normal);
draw_set_alpha(1);