/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < 5; i++)
{
	var current_bg =  backgrounds[i];
	
	current_bg.xoffset =  ((scroll_speed * current_bg.percent_x) + current_bg.xoffset) mod 480;
	
	current_bg.yoffset += scroll_speed * current_bg.percent_y;
	
	
	
	
	draw_sprite(current_bg.sprite , 0, 
		camera_get_view_x( view_get_camera(view_camera[0])) + current_bg.xoffset,  
		camera_get_view_y( view_get_camera(view_camera[0])) + current_bg.yoffset
		);
	draw_sprite(current_bg.sprite , 0, 
		camera_get_view_x( view_get_camera(view_camera[0])) + current_bg.xoffset + 480,  
		camera_get_view_y( view_get_camera(view_camera[0])) + current_bg.yoffset
		);
		draw_sprite(current_bg.sprite , 0, 
		camera_get_view_x( view_get_camera(view_camera[0])) + current_bg.xoffset - 480,  
		camera_get_view_y( view_get_camera(view_camera[0])) + current_bg.yoffset
		);
	
	
	
}