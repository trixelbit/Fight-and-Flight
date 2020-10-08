audio_group_load(agMusic);
audio_group_load(agSFX);
audio_loaded = false;
file_loaded = false;
global.music_volume = 0.5;
global.sound_volume = 0.8;
load_data();

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


var base_w = (600) * 2;
var base_h = 270 * 2;
var aspect = display_get_width() / display_get_height();
if (aspect > 1)
    {
    //landscape
    display_set_gui_size(base_h * aspect, base_h);
    }
else
    {
    //portrait
    display_set_gui_size(base_w, base_w / aspect);
    }
