display_set_gui_size(1920, 1080)
var _video_main = video_draw()
var _video_status = _video_main[0]
if (_video_status == 0)
    draw_surface(_video_main[1], 0, 0)
else
    show_debug_message("error")
if (menu_type[page_now] == 0)
{
    draw_sprite_ext(s_zs_menu_bar, 0, black_box_x, black_box_y, 1, 1, 0, c_white, 0.7)
    draw_sprite(s_zs_title_main_menu, 0, title_logo_x, title_logo_y)
}
display_set_gui_size(480, 270)
var camx = 0
var camy = 0
var cax = camera_get_view_x(view_camera[0])
var cay = camera_get_view_y(view_camera[0])
if (menu_type[page_now] == 1)
{
    var _c = c_black
    draw_sprite_ext(s_death_screen, 0, 0, 0, 1, 1, 0, c_white, (0.8 * menu_button_alpha))
}
if (page_now == (5 << 0))
{
    draw_sprite(tut_image[tutorial_page][tutorial_sub_page], 0, 0, 0)
    draw_set_font(font0)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_text_transformed(tut_page_name_x, tutorial_text_y, tut_text_cat[tutorial_page], 2, 2, 0)
    draw_set_halign(fa_center)
    var _sub_page = tutorial_sub_page
    var _max_sub_page = array_length_2d(tut_image, tutorial_page)
    var _t = ((string((tutorial_sub_page + 1)) + " / ") + string(_max_sub_page))
    draw_text_transformed(tut_page_sub_page_x, tutorial_text_y, _t, 2, 2, 0)
    var _w = tut_page_next_w
    var _sprite_w = 10
    var _off = ((tut_page_next_w - _sprite_w) / 2)
    _c = c_white
    if scr_mouse_inside(((cax + tut_page_previous_x) - _off), ((cay + tut_page_next_y) - _off), _w, _w)
        _c = 0x91F2FF
    draw_sprite_ext(s_hud_freccia, 1, tut_page_previous_x, tut_page_next_y, 1, 1, 0, _c, 1)
    _c = c_white
    if scr_mouse_inside(((cax + tut_page_next_x) - _off), ((cay + tut_page_next_y) - _off), _w, _w)
        _c = 0x91F2FF
    draw_sprite_ext(s_hud_freccia, 0, tut_page_next_x, tut_page_next_y, 1, 1, 0, _c, 1)
}
if (page_now == (14 << 0))
{
    var _x = 240
    var _y = 50
    var _h = 12
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    if (!surface_exists(surface_credits))
    {
        surface_credits = surface_create(s_credits_w, s_credits_h)
        surface_set_target(surface_credits)
        draw_clear_alpha(c_black, 0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_set_font(font_credits_small)
        for (var i = 0; i < array_length_1d(credits_text); i++)
        {
            if (credits_text[i] != 0)
            {
                var _text = (credits_text[i] + "\n")
                _c = credits_color[i]
                if (credits_size[i] == 2)
                    draw_text_transformed_color(_x, (0 + (i * _h)), _text, 2, 2, 0, _c, _c, _c, _c, 1)
                else
                    draw_text_color(_x, (0 + (i * _h)), _text, _c, _c, _c, _c, 1)
            }
        }
        surface_reset_target()
    }
    draw_surface(surface_credits, 0, (_y + credits_y))
}
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
for (i = 0; i < array_length(menu_button_x[page_now]); i++)
{
    var _c_text = button_color_white
    var _c_rect = 0
    var _c_rect_hover = button_color_white
    var _c_text_hover = c_black
    var _is_hover = 0
    if (button_hover_now == i)
    {
        if (menu_button_type[page_now][i] == (0 << 0))
        {
            _c_text = _c_text_hover
            _c_rect = _c_rect_hover
            _is_hover = 1
        }
    }
    var _bx = menu_button_x[page_now][i]
    var _by = menu_button_y[page_now][i]
    var _bw = menu_button_w[page_now][i]
    var _bh = menu_button_h[page_now][i]
    var _name = menu_button_name[page_now][i]
    var _size = menu_button_size[page_now][i]
    if (page_now == (2 << 0) || page_now == (3 << 0))
    {
        if (i < 3)
        {
            if file_exists((("save_general_" + string((i + 1))) + ".ini"))
            {
                ini_open((("save_general_" + string((i + 1))) + ".ini"))
                var time_played = ini_read_real("Real time played", "seconds", 0)
                ini_close()
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                var hour_played = (time_played div 3600)
                var min_played = ((time_played - (hour_played * 3600)) div 60)
                var text_time_played = (((string(hour_played) + "H ") + string(min_played)) + "M")
                _name += (("   (" + text_time_played) + ")")
            }
        }
    }
    if (_is_hover == 1)
    {
        var _xs = 1
        var _ys = 1
        if (_size == 1)
        {
            _xs = 0.7
            _ys = 0.65
        }
        draw_sprite_ext(s_button_background, 0, _bx, _by, _xs, _ys, 0, c_white, 0.85)
    }
    draw_text_transformed_color(_bx, (_by + _size), _name, _size, _size, 0, _c_text, _c_text, _c_text, _c_text, menu_button_alpha)
    if (menu_button_type[page_now][i] == (3 << 0))
    {
        var _can_slide = 1
        if (page_now == (20 << 0) || page_now == (21 << 0) || page_now == (18 << 0) || page_now == (16 << 0) || page_now == (19 << 0) || page_now == (17 << 0))
        {
            if (room != r_menu)
                _can_slide = 0
        }
        var _alpha = 1
        if (_can_slide == 0)
            _alpha = menu_button_alpha_can_not
        var _slider_x = (menu_slider_startx - (menu_slider_w / 2))
        var _slider_y = _by
        draw_sprite_ext(s_hud_slider_bar, 0, _slider_x, _slider_y, 1, 1, 0, _c_text, _alpha)
        var _value = menu_button_val[page_now][i]
        var _value_max = menu_button_slider_max[page_now][i]
        var _value_min = menu_button_slider_min[page_now][i]
        var _pointer_x = (_slider_x + round(((menu_slider_w * (_value - _value_min)) / (_value_max - _value_min))))
        draw_sprite_ext(s_hud_slider_point, 0, _pointer_x, _by, 1, 1, 0, _c_text, _alpha)
        var _amount_x = ((_slider_x + menu_slider_w) + 20)
        draw_text_color(_amount_x, _by, string(_value), _c_text, _c_text, _c_text, _c_text, 1)
    }
    if (menu_button_type[page_now][i] == (2 << 0))
    {
        _value = menu_button_val[page_now][i]
        var a_on = 0
        var a_off = 0
        var _c_on = _c_text
        var _c_off = _c_text
        var _c_rect_high = button_color_white
        if (_value == 1)
        {
            a_on = 1
            a_off = 0.3
        }
        else
        {
            a_on = 0.3
            a_off = 1
        }
        _w = menu_button_standard_on_w
        _h = menu_button_h[page_now][i]
        _y = (menu_button_y[page_now][i] - (_h / 2))
        var _onx = (menu_button_on_x[page_now][i] - (_w / 2))
        var _offx = (menu_button_off_x[page_now][i] - (_w / 2))
        var _can_press = 1
        if (page_now == (20 << 0) || page_now == (21 << 0) || page_now == (18 << 0) || page_now == (16 << 0) || page_now == (19 << 0) || page_now == (17 << 0))
        {
            if (room != r_menu)
                _can_press = 0
        }
        if (_can_press == 0)
        {
            if (_value == 1)
            {
                a_on = menu_button_alpha_can_not
                a_off = 0.3
            }
            else
            {
                a_on = 0.3
                a_off = menu_button_alpha_can_not
            }
        }
        if (_can_press == 1)
        {
            if scr_mouse_inside((cax + _onx), (cay + _y), _w, _h)
            {
                draw_rectangle_color(_onx, _y, (_onx + _w), (_y + _h), _c_rect_high, _c_rect_high, _c_rect_high, _c_rect_high, 0)
                _c_on = 0
                a_on = 1
            }
            if scr_mouse_inside((cax + _offx), (cay + _y), _w, _h)
            {
                draw_rectangle_color(_offx, _y, (_offx + _w), (_y + _h), _c_rect_high, _c_rect_high, _c_rect_high, _c_rect_high, 0)
                _c_off = 0
                a_off = 1
            }
        }
        draw_text_transformed_color(menu_button_standard_on_x, (_by + 1), "on", _size, _size, 0, _c_on, _c_on, _c_on, _c_on, a_on)
        draw_text_transformed_color(menu_button_standard_off_x, (_by + 1), "off", _size, _size, 0, _c_off, _c_off, _c_off, _c_off, a_off)
    }
}
draw_set_font(font_quest)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
for (i = 0; i < array_length(menu_button_x[page_now]); i++)
{
    if (menu_button_info[page_now][i] == 1)
    {
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        var _button_w = menu_button_w[page_now][i]
        var _button_h = menu_button_h[page_now][i]
        var _button_x = (menu_button_x[page_now][i] - (_button_w / 2))
        var _button_y = (menu_button_y[page_now][i] - (_button_h / 2))
        if scr_mouse_inside((_button_x - cax), (_button_y - cay), _button_w, _button_h)
        {
            _text = menu_button_info_text[page_now][i]
            var _text_lenght = string_length(_text)
            var _text_w_normal = string_width(_text)
            var _text_max_w = 160
            var _text_sep = 12
            var _text_w = _text_max_w
            if ((_text_w_normal / _text_max_w) <= 1)
                _text_w = _text_max_w
            if ((_text_w_normal / _text_max_w) < 0.4)
                _text_w = (_text_max_w / 1.5)
            if ((_text_w_normal / _text_max_w) > 1)
                _text_w = _text_max_w
            if ((_text_w_normal / _text_max_w) > 3)
                _text_w = (_text_max_w * 1.5)
            var _text_h = string_height_ext(_text, _text_sep, _text_w)
            _off = 4
            _bx = ((_button_x - cax) - _off)
            _by = ((((_button_y - cay) - _text_h) - _off) - 12)
            var _off_margin = 15
            _bx = clamp(_bx, _off_margin, (((480 - _off_margin) - _text_w) - (_off * 2)))
            _by = clamp(_by, _off_margin, (((270 - _off_margin) - _text_h) - (_off * 2)))
            _bw = string_width_ext(_text, _text_sep, _text_w)
            var _text_x = (_bx + _off)
            if (page_now == (16 << 0))
            {
                draw_set_font(font_quest)
                draw_set_halign(fa_center)
                draw_set_valign(fa_top)
                _text_w = 300
                _text_h = 100
                _bx = ((240 - (_text_w / 2)) - _off)
                _by = 140
                _bw = _text_w
                _text_x = 240
            }
            scr_draw_box(s_box_skill1, _bx, _by, (_bw + (_off * 2)), (_text_h + (_off * 2)), 1)
            _c = button_color_white
            draw_text_ext_color((_text_x + _off), (_by + _off), _text, _text_sep, _text_w, _c, _c, _c, _c, 1)
        }
    }
}
if (page_now == (12 << 0))
{
    draw_set_font(font_quest)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    for (i = 0; i < array_length(global.kb_id); i++)
    {
        var _tx = keyb_t_startx
        _bx = keyb_k_startx
        var sy = keyb_starty
        var sep = keyb_sep
        var key_n = scr_key_map(global.kb_now[i])
        if (i > keyb_n_fila)
        {
            _tx = (keyb_t_startx + keyb_offset_w)
            _bx = (keyb_k_startx + keyb_offset_w)
            sy = (keyb_starty - ((keyb_n_fila + 1) * sep))
        }
        var c_ = button_color_white
        draw_set_halign(fa_left)
        draw_text_color((camx + _tx), (sy + (i * sep)), global.kb_name[i], c_, c_, c_, c_, 1)
        draw_set_halign(fa_center)
        var c_t = button_color_white
        if scr_mouse_inside(((cax + _bx) - (keyb_w / 2)), (((cay + sy) - 1) + (i * keyb_sep)), keyb_w, keyb_h)
        {
            c_t = 0
            draw_rectangle_color((_bx - (keyb_w / 2)), ((sy - 1) + (i * keyb_sep)), (_bx + (keyb_w / 2)), (((sy - 1) + (i * keyb_sep)) + 11), c_, c_, c_, c_, 0)
        }
        draw_text_color((camx + _bx), (sy + (i * sep)), key_n, c_t, c_t, c_t, c_t, 1)
    }
}
if (page_now == (0 << 0))
{
    var gx = menu_button_startx
    var gy = ((camy + 270) - 15)
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    _c = 0x40FCFF
    draw_text_color(gx, gy, global.game_version, _c, _c, _c, _c, 1)
}
if (page_state == (8 << 0))
{
    _w = 380
    _h = 40
    _y = 200
    scr_draw_box(s_box_testo1, (240 - (_w / 2)), _y, _w, _h, 1)
    _t = "Note - when in fullscreen, the game will always scale to the correct resolution for your monitor. Due to pixelart scaling, resolution changes will only take effect in windowed mode."
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    _c = c_black
    draw_text_ext_color(240, ((_y + (_h / 2)) + 1), _t, 12, 360, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_ext_color(240, (_y + (_h / 2)), _t, 12, 360, _c, _c, _c, _c, 1)
}
if (state_sure == 1)
{
    _w = 180
    _h = 60
    _x = (240 - (_w / 2))
    _y = (135 - (_h / 2))
    scr_draw_box(s_box_testo_pop_up, _x, _y, _w, _h, 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    scr_draw_text_outlined(240, (_y + 11), "Are you sure you want to leave?", button_color_white, c_black, 1, 1)
    draw_set_font(font_quest)
    draw_set_valign(fa_middle)
    var _yx = (sure_yes_x - (sure_w / 2))
    var _yy = (sure_yes_y - (sure_h / 2))
    _c_text = button_color_white
    if (sure_hover == 1)
    {
        _c = button_color_white
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + sure_w), (_yy + sure_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(sure_yes_x, sure_yes_y, "[Y] yes", _c_text, _c_text, _c_text, _c_text, 1)
    var _nx = (sure_no_x - (sure_w / 2))
    var _ny = (sure_no_y - (sure_h / 2))
    _c_text = button_color_white
    if (sure_hover == 2)
    {
        _c = button_color_white
        _c_text = c_black
        draw_rectangle_color(_nx, _ny, (_nx + sure_w), (_ny + sure_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(sure_no_x, sure_no_y, "[N] no", _c_text, _c_text, _c_text, _c_text, 1)
}
if (new_version == 1)
{
    draw_sprite(s_hud_new_version, 0, 0, 0)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    _t = global.new_version_text
    _c = c_black
    draw_text_color(240, 136, _t, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_color(240, 135, _t, _c, _c, _c, _c, 1)
}
if (global.ga_pop_up == 1)
{
    var _off_w = (ga_pop_up_box_w / 2)
    var _off_h = (ga_pop_up_box_h / 2)
    _bx = (240 - _off_w)
    _by = (135 - _off_h)
    scr_draw_box(s_box_testo1, _bx, _by, (_off_w * 2), (_off_h * 2), 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    var _tt = "Hey Hunter, we'd like to track your progress as you scavenge and explore what's left of the world. We use some in-game analytic tech to gather device and gameplay data to help us understand how you survive, progress and to improve the prospects for you and other Hunters.\n\nGameAnalytics also like to track you and collect data to help them improve their tech.\n\nIf you are OK with that, choose Accept & Play. If you're not, we won't track any of it. You can change your settings at any time in the Data menu.\n\nSee you in the bunker!"
    _c = c_black
    draw_text_ext_color(240, (((135 - _off_h) + 5) + 1), _tt, 12, 300, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_ext_color(240, ((135 - _off_h) + 5), _tt, 12, 300, _c, _c, _c, _c, 1)
    draw_set_valign(fa_middle)
    _yx = (ga_pop_up_yes_x - (ga_pop_up_w / 2))
    _yy = (ga_pop_up_yes_y - (ga_pop_up_h / 2))
    _c_text = c_white
    if (ga_pop_up_hover == 1)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + ga_pop_up_w), (_yy + ga_pop_up_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(ga_pop_up_yes_x, ga_pop_up_yes_y, "Accept and Play", _c_text, _c_text, _c_text, _c_text, 1)
    _yx = (ga_pop_up_no_x - (ga_pop_up_w / 2))
    _yy = (ga_pop_up_no_y - (ga_pop_up_h / 2))
    _c_text = c_white
    if (ga_pop_up_hover == 2)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + ga_pop_up_w), (_yy + ga_pop_up_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(ga_pop_up_no_x, ga_pop_up_no_y, "Play without Analytics", _c_text, _c_text, _c_text, _c_text, 1)
    var _lx = (ga_link1_x - (ga_link_w / 2))
    var _ly = (ga_link1_y - (ga_link_h / 2))
    _c_text = 0xFFE89A
    if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        _c_text = 0xFFC400
    draw_text_color(ga_link1_x, ga_link1_y, "Our Privacy Policy", _c_text, _c_text, _c_text, _c_text, 1)
    _lx = (ga_link2_x - (ga_link_w / 2))
    _ly = (ga_link2_y - (ga_link_h / 2))
    _c_text = 0xFFE89A
    if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        _c_text = 16761856
    draw_text_color(ga_link2_x, ga_link2_y, "GameAnalytics Privacy Policy", _c_text, _c_text, _c_text, _c_text, 1)
}
