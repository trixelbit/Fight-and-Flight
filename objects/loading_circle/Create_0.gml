audio_group_load(agMusic);
audio_group_load(agSFX);
randomize();
audio_loaded = false;
file_loaded = false;
skip = false;
global.music_volume = 0.6;
global.sound_volume = 1;
load_data();
show_debug_overlay(true);

audio_play_sound(m_intro,1000,false);
phase = 0;
alarm[0] = 2.4 * 60;
alarm[1] = 7 * 60;
alarm[2] = 10 * 60;

#region Mobile scaling
// mobile scaling
var base_w = 600 ;
var base_h = 270;
var aspect = base_w / base_h ; // get the GAME aspect ratio
if (display_get_width() < display_get_height())
    {
    //portrait
    var ww = min(base_w, display_get_width());
    var hh = ww / aspect;
    }
else
    {
    //landscape
    var hh = min(base_h, display_get_height());
    var ww = hh * aspect;
    }
surface_resize(application_surface, ww, hh);


var scale = 1;

switch(os_type)
{
	case os_android:
	scale = 2.15;
	break;
	
	case os_windows:
	scale = 4;
	break;
}

var base_w = 600 * scale;
var base_h = 270 * scale;
var aspect = display_get_width() / display_get_height();
if (aspect > 1)
    {
    //landscape
    ww = base_h * aspect;
    hh = base_h;
    display_set_gui_maximise((display_get_width() / ww), (display_get_height() / hh), 0, 0);
    }
else
    {
    //portrait
    ww = base_w;
    hh = base_w / aspect;
    display_set_gui_maximise((display_get_width() / ww), (display_get_height() / hh), 0, 0);
    }

#endregion

