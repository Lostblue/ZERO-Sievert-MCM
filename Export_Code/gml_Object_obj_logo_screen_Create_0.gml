animation_speed = 1
image_speed = 0
window_set_fullscreen(true)
video = video_open("ZS_boot.mp4")
var _video_duration = video_get_duration()
alarm[0] = (floor(((_video_duration / 1000) * 60)) + 60)
video_enable_loop(0)
ini_open("settings.ini")
var first_time = ini_read_real("first_time", "first_time", 0)
if (first_time == 0)
{
    var mw = display_get_width()
    var mh = display_get_height()
    window_set_size(mw, mh)
    ini_write_real("first_time", "first_time", 1)
}
global.fullscreen = ini_read_real("settings", "fullscreen", 1)
ini_close()
window_set_fullscreen(global.fullscreen)
