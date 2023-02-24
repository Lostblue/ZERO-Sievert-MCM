var showborder = argument0
if showborder
{
    var ww = window_get_width()
    var wh = window_get_height()
}
_window_set_showborder(window_handle(), showborder)
if showborder
    window_set_size(ww, wh)
