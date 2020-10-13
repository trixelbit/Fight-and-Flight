/// @description Insert description here
// You can write your code in this editor
if(audio_loaded)
{
	
}


if(phase = 0)
{
	trixelbitarcade.y = lerp(trixelbitarcade.y, room_height/2, .2);
}
else if(phase = 1)
{
	trixelbit.x = lerp(trixelbit.x, room_width/2, .1);
	trixelbit.y = lerp(trixelbit.y, room_height/2, .1);
	trixelbitarcade.x = lerp(trixelbitarcade.x, -600, .1);
}