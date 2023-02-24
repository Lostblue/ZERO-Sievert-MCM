display_set_gui_size(1920, 1080)
var _video_main = video_draw()
var _video_status = _video_main[0]
if (_video_status == 0)
    draw_surface(_video_main[1], 0, 0)
