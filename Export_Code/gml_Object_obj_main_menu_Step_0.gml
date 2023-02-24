var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (!audio_group_is_loaded(14))
    audio_group_load(14)
if (!audio_is_playing(snd_main_menu_2))
    audio_play_sound(snd_main_menu_2, 20, false)
var _normal = 1
if (new_version == 1)
    _normal = 0
if (global.ga_pop_up == 1)
    _normal = 0
if (_normal == 1)
{
    var _mouse = mouse_check_button(mb_left)
    var _mouse_pressed = mouse_check_button_pressed(mb_left)
    var _mouse_released = mouse_check_button_released(mb_left)
    if (page_now == (1 << 0))
    {
        if keyboard_check_pressed(vk_escape)
        {
            if instance_exists(obj_main_menu)
            {
                with (obj_main_menu)
                    instance_destroy()
            }
            audio_resume_all()
            if (room == r_hub)
                instance_activate_all()
            instance_activate_region((x - 480), (y - 270), 960, 540, true)
            obj_controller.can_pause = 0
        }
    }
    if (state_sure == 1)
    {
        but_pressed = 0
        option_selected = -1
        var _selected = 0
        sure_hover = 0
        var _yx = (sure_yes_x - (sure_w / 2))
        var _yy = (sure_yes_y - (sure_h / 2))
        if scr_mouse_inside((_yx + camx), (_yy + camy), sure_w, sure_h)
        {
            sure_hover = 1
            if mouse_check_button_released(mb_left)
                _selected = 1
        }
        var _nx = (sure_no_x - (sure_w / 2))
        var _ny = (sure_no_y - (sure_h / 2))
        if scr_mouse_inside((_nx + camx), (_ny + camy), sure_w, sure_h)
        {
            sure_hover = 2
            if mouse_check_button_released(mb_left)
                _selected = 2
        }
        if keyboard_check_pressed(ord("N"))
            _selected = 2
        if keyboard_check_pressed(ord("Y"))
            _selected = 1
        if (_selected == 2)
            state_sure = 0
        if (_selected == 1)
        {
            if (room == r_hub)
                scr_save_or_load(0, 1)
            else
                scr_save_or_load(0, 0)
            audio_stop_all()
            room_goto(r_menu)
        }
    }
    if (state_sure == 0)
    {
        button_hover_now = -1
        for (var i = 0; i < array_length(menu_button_x[page_now]); i++)
        {
            if (menu_button_type[page_now][i] == (0 << 0))
            {
                var _w = menu_button_w[page_now][i]
                var _h = menu_button_h[page_now][i]
                var _x = (menu_button_x[page_now][i] - (_w / 2))
                var _y = (menu_button_y[page_now][i] - (_h / 2))
                if scr_mouse_inside((camx + _x), (camy + _y), _w, _h)
                    button_hover_now = i
            }
        }
        if (button_hover_before == -1 && button_hover_now != -1)
            audio_play_sound(snd_button_hover_rad, 15, false)
        button_hover_before = button_hover_now
        if (page_now == (12 << 0))
        {
            var ww = keyb_w
            var hh = keyb_h
            var _wait_next_step = 0
            if (wait_input == 1)
            {
                _wait_next_step = 1
                var _key_is_pressed = 0
                var _key_pressed = -4
                if keyboard_check_pressed(vk_anykey)
                    _key_pressed = keyboard_key
                if mouse_check_button_pressed(mb_any)
                    _key_pressed = mouse_lastbutton
                if (_key_pressed != -4)
                {
                    var t = scr_key_map(_key_pressed)
                    var valid_key = 1
                    var _key_no_mouse = 0
                    var already_key = 0
                    if (t == "Error")
                        valid_key = 0
                    if (global.kb_accept_mouse[key_selected] == 0)
                    {
                        if mouse_check_button_pressed(mb_any)
                        {
                            valid_key = 0
                            _key_no_mouse = 1
                        }
                    }
                    for (i = 0; i < array_length_1d(global.kb_id); i++)
                    {
                        if (global.kb_now[i] == _key_pressed)
                            already_key = 1
                    }
                    if (valid_key == 1 && already_key == 0)
                    {
                        global.kb_now[key_selected] = _key_pressed
                        wait_input = 0
                        scr_draw_text_with_box("Key set")
                    }
                    if (valid_key == 0)
                    {
                        scr_draw_text_with_box("Invalid key")
                        wait_input = 0
                    }
                    if (already_key == 1)
                    {
                        scr_draw_text_with_box("Key already used")
                        wait_input = 0
                    }
                    if (_key_no_mouse == 1)
                    {
                        wait_input = 0
                        scr_draw_text_with_box("This key doesn't accept a mouse button")
                    }
                }
            }
            if (mouse_check_button_pressed(mb_left) && wait_input == 0 && _wait_next_step == 0)
            {
                for (i = 0; i < array_length(global.kb_id); i++)
                {
                    var _tx = keyb_t_startx
                    var _bx = keyb_k_startx
                    var sy = keyb_starty
                    var sep = keyb_sep
                    if (i > keyb_n_fila)
                    {
                        _tx = (keyb_t_startx + keyb_offset_w)
                        _bx = (keyb_k_startx + keyb_offset_w)
                        sy = (keyb_starty - ((keyb_n_fila + 1) * sep))
                    }
                    if scr_mouse_inside(((camx + _bx) - (ww / 2)), (((camy + sy) - 1) + (i * keyb_sep)), ww, hh)
                    {
                        scr_draw_text_with_box("Waiting for input...")
                        wait_input = 1
                        key_selected = i
                    }
                }
            }
        }
        if (page_now == (5 << 0))
        {
            if mouse_check_button_pressed(mb_left)
            {
                _w = tut_page_next_w
                var _sprite_w = 10
                var _off = ((tut_page_next_w - _sprite_w) / 2)
                if scr_mouse_inside(((camx + tut_page_previous_x) - _off), ((camy + tut_page_next_y) - _off), _w, _w)
                    tutorial_sub_page -= 1
                if scr_mouse_inside(((camx + tut_page_next_x) - _off), ((camy + tut_page_next_y) - _off), _w, _w)
                    tutorial_sub_page += 1
                var _max = array_length_2d(tut_image, tutorial_page)
                tutorial_sub_page = clamp(tutorial_sub_page, 0, (_max - 1))
            }
        }
        if (button_hover_now != -1)
        {
            if (_mouse_released == 1)
            {
                if (menu_button_type[page_now][button_hover_now] == (0 << 0))
                {
                    audio_play_sound(snd_button_click_rad, 15, false)
                    switch page_now
                    {
                        case (0 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (2 << 0)
                                    break
                                case (1 << 0):
                                    page_now = (3 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (6 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (4 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (14 << 0)
                                    credits_movement = 0
                                    alarm[2] = 120
                                    break
                                case (4 << 0):
                                    url_open("https://discord.gg/4HPNUpWVU9")
                                    break
                                case (6 << 0):
                                    game_end()
                                    break
                            }

                            break
                        case (1 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    if instance_exists(obj_main_menu)
                                    {
                                        with (obj_main_menu)
                                            instance_destroy()
                                    }
                                    audio_resume_all()
                                    instance_activate_region((x - 480), (y - 270), 960, 540, true)
                                    if (room == r_hub)
                                        instance_activate_all()
                                    obj_controller.can_pause = 0
                                    break
                                case (1 << 0):
                                    page_now = (6 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (4 << 0)
                                    break
                                case (3 << 0):
                                    state_sure = 1
                                    break
                            }

                            break
                        case (2 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (16 << 0)
                                    global.slot_selected = 1
                                    fun_diff_setting_set_preset((0 << 0))
                                    gml_Script_fun_update_diff_button_var()
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    global.slot_selected = 2
                                    fun_diff_setting_set_preset((0 << 0))
                                    gml_Script_fun_update_diff_button_var()
                                    break
                                case (2 << 0):
                                    page_now = (16 << 0)
                                    global.slot_selected = 3
                                    fun_diff_setting_set_preset((0 << 0))
                                    gml_Script_fun_update_diff_button_var()
                                    break
                                case (3 << 0):
                                    page_now = (0 << 0)
                                    break
                            }

                            break
                        case (22 << 0):
                            switch button_hover_now
                            {
                                case (1 << 0):
                                    file_delete((("save_" + string(global.slot_selected)) + ".ini"))
                                    file_delete((("save_general_" + string(global.slot_selected)) + ".ini"))
                                    file_delete((("save_player_chest_" + string(global.slot_selected)) + ".ini"))
                                    file_delete((("save_hub_" + string(global.slot_selected)) + ".ini"))
                                    scr_aggiorna_save_slot()
                                    ini_open((("save_" + string(global.slot_selected)) + ".ini"))
                                    ini_write_real("trait", "id", global.trait_selected)
                                    ini_write_real("Main", "new game", 1)
                                    ini_close()
                                    var _equipment = string(global.trait_selected)
                                    ga_addDesignEvent(("StartingEquipment:" + _equipment))
                                    gml_Script_fun_ga_diff_setting()
                                    room_goto(r_hub)
                                    break
                                case (2 << 0):
                                    with (obj_item)
                                        instance_destroy()
                                    page_now = (16 << 0)
                                    break
                                case (3 << 0):
                                    gml_Script_fun_create_starting_equipment((0 << 0))
                                    break
                                case (4 << 0):
                                    gml_Script_fun_create_starting_equipment((1 << 0))
                                    break
                                case (5 << 0):
                                    gml_Script_fun_create_starting_equipment((2 << 0))
                                    break
                                case (6 << 0):
                                    gml_Script_fun_create_starting_equipment((3 << 0))
                                    break
                                case (7 << 0):
                                    gml_Script_fun_create_starting_equipment((4 << 0))
                                    break
                                case (8 << 0):
                                    gml_Script_fun_create_starting_equipment((5 << 0))
                                    break
                            }

                            break
                        case (3 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    global.slot_selected = 1
                                    gml_Script_fun_difficulty_settings_load()
                                    if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                                    {
                                        scr_aggiorna_save_slot()
                                        room_goto(r_hub)
                                    }
                                    else
                                        scr_draw_text_with_box("No file found")
                                    break
                                case (1 << 0):
                                    global.slot_selected = 2
                                    gml_Script_fun_difficulty_settings_load()
                                    if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                                    {
                                        scr_aggiorna_save_slot()
                                        room_goto(r_hub)
                                    }
                                    else
                                        scr_draw_text_with_box("No file found")
                                    break
                                case (2 << 0):
                                    global.slot_selected = 3
                                    gml_Script_fun_difficulty_settings_load()
                                    if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                                    {
                                        scr_aggiorna_save_slot()
                                        room_goto(r_hub)
                                    }
                                    else
                                        scr_draw_text_with_box("No file found")
                                    break
                                case (3 << 0):
                                    page_now = (0 << 0)
                                    break
                            }

                            break
                        case (4 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (0 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (1 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (1 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (4 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (4 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (2 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (2 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (5 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (5 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (3 << 0):
                                    page_now = (5 << 0)
                                    tutorial_page = (3 << 0)
                                    tutorial_sub_page = 0
                                    break
                                case (6 << 0):
                                    if (room == r_menu)
                                        page_now = (0 << 0)
                                    else
                                        page_now = (1 << 0)
                                    break
                            }

                            break
                        case (5 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (4 << 0)
                                    break
                            }

                            break
                        case (14 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (0 << 0)
                                    break
                            }

                            break
                        case (6 << 0):
                            switch button_hover_now
                            {
                                case (0 << 0):
                                    page_now = (7 << 0)
                                    break
                                case (1 << 0):
                                    page_now = (8 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (10 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (12 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (9 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (11 << 0)
                                    break
                                case (6 << 0):
                                    if (room == r_menu)
                                        scr_draw_text_with_box("You can not change difficulty settings in the main menu")
                                    else
                                    {
                                        gml_Script_fun_update_diff_button_var()
                                        page_now = (16 << 0)
                                    }
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_save_settings()
                                        page_now = (0 << 0)
                                    }
                                    else
                                    {
                                        gml_Script_fun_save_settings()
                                        page_now = (1 << 0)
                                    }
                                    break
                            }

                            break
                        case (7 << 0):
                            switch button_hover_now
                            {
                                case (5 << 0):
                                    page_now = (6 << 0)
                                    ini_open("settings.ini")
                                    ini_write_real("settings", "master volume", global.volume_master)
                                    ini_write_real("settings", "radiation volume", global.volume_radiation)
                                    ini_write_real("settings", "heart volume", global.volume_heart)
                                    ini_write_real("settings", "main volume", global.volume_main_menu)
                                    ini_close()
                                    break
                            }

                            break
                        case (8 << 0):
                            switch button_hover_now
                            {
                                case (9 << 0):
                                    page_now = (6 << 0)
                                    ini_open("settings.ini")
                                    ini_write_real("settings", "fog rain", global.fog_rain)
                                    ini_write_real("settings", "dynamic grass", global.erba_dinamica)
                                    ini_write_real("settings", "amount grass", global.erba_amount)
                                    ini_write_real("settings", "low spec", global.low_spec)
                                    ini_write_real("settings", "fullscreen", global.fullscreen)
                                    ini_write_real("settings", "fog of war", global.fog_enable)
                                    ini_write_real("settings", "fog of war alpha", global.fog_alpha)
                                    ini_close()
                                    window_set_fullscreen(global.fullscreen)
                                    break
                            }

                            break
                        case (9 << 0):
                            switch button_hover_now
                            {
                                case (4 << 0):
                                    page_now = (6 << 0)
                                    ini_open("settings.ini")
                                    ini_write_real("settings", "bunker_animation", global.bunker_animation)
                                    ini_write_real("settings", "toggle_sprint", global.toggle_sprint)
                                    ini_write_real("settings", "item_overlay", global.hud_item_overlay)
                                    ini_close()
                                    break
                            }

                            break
                        case (11 << 0):
                            switch button_hover_now
                            {
                                case (3 << 0):
                                    page_now = (6 << 0)
                                    break
                                case (2 << 0):
                                    url_open("https://modernwolf.net/media/Developers/CaboStudio/Privacy%20Notice_%20Zero%20Sievert.pdf")
                                    break
                            }

                            break
                        case (10 << 0):
                            switch button_hover_now
                            {
                                case (5 << 0):
                                    page_now = (6 << 0)
                                    break
                                case (1 << 0):
                                    window_set_size(1280, 720)
                                    global.resolution = (0 << 0)
                                    break
                                case (2 << 0):
                                    window_set_size(1920, 1080)
                                    global.resolution = (1 << 0)
                                    break
                                case (3 << 0):
                                    window_set_size(2560, 1440)
                                    global.resolution = (2 << 0)
                                    break
                                case (4 << 0):
                                    window_set_size(3840, 2160)
                                    global.resolution = (3 << 0)
                                    break
                            }

                            break
                        case (12 << 0):
                            switch button_hover_now
                            {
                                case (2 << 0):
                                    ini_open("settings.ini")
                                    for (i = 0; i < array_length(global.kb_id); i++)
                                        ini_write_real("Keybinding", global.kb_name[i], global.kb_now[i])
                                    ini_close()
                                    page_now = (6 << 0)
                                    break
                                case (1 << 0):
                                    ini_open("settings.ini")
                                    for (i = 0; i < array_length(global.kb_id); i++)
                                    {
                                        global.kb_now[i] = global.kb_default[i]
                                        ini_write_real("Keybinding", global.kb_name[i], global.kb_default[i])
                                    }
                                    ini_close()
                                    scr_draw_text_with_box("All controls have been reset")
                                    break
                            }

                            break
                        case (16 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                                case (9 << 0):
                                    if (room == r_menu)
                                    {
                                        fun_diff_setting_set_preset((0 << 0))
                                        gml_Script_fun_update_diff_button_var()
                                        scr_draw_text_with_box("Preset Rookie set")
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (10 << 0):
                                    if (room == r_menu)
                                    {
                                        fun_diff_setting_set_preset((1 << 0))
                                        gml_Script_fun_update_diff_button_var()
                                        scr_draw_text_with_box("Preset Survivor set")
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (11 << 0):
                                    if (room == r_menu)
                                    {
                                        fun_diff_setting_set_preset((2 << 0))
                                        gml_Script_fun_update_diff_button_var()
                                        scr_draw_text_with_box("Preset Hunter set")
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                            }

                            break
                        case (17 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                            }

                            break
                        case (18 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                            }

                            break
                        case (19 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                            }

                            break
                        case (20 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                            }

                            break
                        case (21 << 0):
                            switch button_hover_now
                            {
                                case (8 << 0):
                                    if (room == r_menu)
                                        page_now = (2 << 0)
                                    else
                                        page_now = (6 << 0)
                                    break
                                case (7 << 0):
                                    if (room == r_menu)
                                    {
                                        gml_Script_fun_update_diff_global_var()
                                        gml_Script_fun_difficulty_settings_save()
                                        gml_Script_fun_create_starting_equipment((0 << 0))
                                        page_now = (22 << 0)
                                    }
                                    else
                                        scr_draw_text_with_box("Difficulty settings cannot be changed during the game")
                                    break
                                case (1 << 0):
                                    page_now = (16 << 0)
                                    break
                                case (2 << 0):
                                    page_now = (17 << 0)
                                    break
                                case (3 << 0):
                                    page_now = (18 << 0)
                                    break
                                case (4 << 0):
                                    page_now = (19 << 0)
                                    break
                                case (5 << 0):
                                    page_now = (20 << 0)
                                    break
                                case (6 << 0):
                                    page_now = (21 << 0)
                                    break
                            }

                            break
                    }

                }
            }
        }
        for (i = 0; i < array_length(menu_button_x[page_now]); i++)
        {
            if (menu_button_type[page_now][i] == (3 << 0))
            {
                _w = menu_slider_w
                _h = menu_slider_h
                _x = (menu_button_slider_x[page_now][i] - (_w / 2))
                _y = (menu_button_y[page_now][i] - (_h / 2))
                if scr_mouse_inside(((camx + _x) - menu_slider_off), (camy + _y), (_w + (menu_slider_off * 2)), _h)
                {
                    if _mouse_pressed
                        menu_slider_now = i
                    if _mouse_released
                        menu_slider_now = -1
                    var _can_slide = 1
                    if (page_now == (20 << 0) || page_now == (21 << 0) || page_now == (18 << 0) || page_now == (16 << 0) || page_now == (19 << 0) || page_now == (17 << 0))
                    {
                        if (room != r_menu)
                            _can_slide = 0
                    }
                    if (_can_slide == 1)
                    {
                        if (_mouse && i == menu_slider_now)
                        {
                            var _value_min = menu_button_slider_min[page_now][i]
                            var _value_max = menu_button_slider_max[page_now][i]
                            var _mousex_in_slider = ((mouse_x - camx) - _x)
                            _mousex_in_slider = clamp(_mousex_in_slider, 0, menu_slider_w)
                            var _rapporto = (_mousex_in_slider / menu_slider_w)
                            var _new_value = lerp(_value_min, _value_max, _rapporto)
                            _new_value = clamp(_new_value, _value_min, _value_max)
                            menu_button_val[page_now][i] = _new_value
                            gml_Script_fun_assing_to_variable()
                        }
                    }
                }
            }
        }
        if _mouse_pressed
        {
            for (i = 0; i < array_length(menu_button_x[page_now]); i++)
            {
                if (menu_button_type[page_now][i] == (2 << 0))
                {
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
                    if (_can_press == 1)
                    {
                        if scr_mouse_inside((camx + _onx), (camy + _y), _w, _h)
                        {
                            menu_button_val[page_now][i] = 1
                            gml_Script_fun_assing_to_variable()
                        }
                        if scr_mouse_inside((camx + _offx), (camy + _y), _w, _h)
                        {
                            menu_button_val[page_now][i] = 0
                            gml_Script_fun_assing_to_variable()
                        }
                    }
                }
            }
        }
    }
    if (page_now == (14 << 0))
    {
        if (credits_movement == 1)
            credits_y -= credits_speed
        var _reset = 0
        if mouse_wheel_up()
        {
            credits_y += (credits_jump * 2)
            _reset = 1
        }
        if mouse_wheel_down()
        {
            credits_y -= (credits_jump * 2)
            _reset = 1
        }
        if keyboard_check(vk_up)
        {
            credits_y += credits_jump
            _reset = 1
        }
        if keyboard_check(vk_down)
        {
            credits_y -= credits_jump
            _reset = 1
        }
        credits_y = clamp(credits_y, ((-s_credits_h) + 270), 0)
        if (_reset == 1)
        {
            credits_movement = 0
            alarm[2] = 90
        }
    }
    if (page_now_before != page_now)
    {
        menu_page_switch = 1
        if (menu_type[page_now] == 1 && menu_type[page_now_before] == 0)
            menu_button_alpha = 0
        button_hover_now = -1
    }
    if (menu_page_switch == 1)
    {
        menu_button_alpha += (1 / menu_button_alpha_timer)
        if (menu_button_alpha >= 1)
        {
            menu_page_switch = 0
            menu_button_alpha = 1
        }
    }
    page_now_before = page_now
    if (keyboard_check_pressed(vk_f5) && keyboard_check(vk_control))
    {
        global.slot_selected = 1
        room_goto(test_room)
    }
}
else
{
    _x = new_version_close_x
    _y = new_version_close_y
    _w = new_version_close_w
    if scr_mouse_inside((camx + _x), (camy + _y), _w, _w)
    {
        if mouse_check_button_pressed(mb_left)
        {
            if (new_version == 1)
                new_version = 0
        }
    }
    if (global.ga_pop_up == 1)
    {
        ga_pop_up_hover = 0
        var _xx = (ga_pop_up_yes_x - (ga_pop_up_w / 2))
        _yy = (ga_pop_up_yes_y - (ga_pop_up_h / 2))
        if scr_mouse_inside((camx + _xx), (camy + _yy), ga_pop_up_w, ga_pop_up_h)
        {
            ga_pop_up_hover = 1
            if mouse_check_button_released(mb_left)
            {
                global.ga_pop_up = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "pop_up", 0)
                ini_close()
                global.ga_collect_data = 1
                ini_open("settings.ini")
                ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
                ini_close()
                ga_onResume()
                ga_setEnabledEventSubmission(1)
            }
        }
        _xx = (ga_pop_up_no_x - (ga_pop_up_w / 2))
        _yy = (ga_pop_up_no_y - (ga_pop_up_h / 2))
        if scr_mouse_inside((camx + _xx), (camy + _yy), ga_pop_up_w, ga_pop_up_h)
        {
            ga_pop_up_hover = 2
            if mouse_check_button_released(mb_left)
            {
                global.ga_pop_up = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "pop_up", 0)
                ini_close()
                global.ga_collect_data = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "collect_data", 0)
                ini_close()
                ga_setEnabledEventSubmission(0)
                ga_onStop()
            }
        }
        var _lx = (ga_link1_x - (ga_link_w / 2))
        var _ly = (ga_link1_y - (ga_link_h / 2))
        if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        {
            if mouse_check_button_released(mb_left)
                url_open("https://modernwolf.net/media/Developers/CaboStudio/Privacy%20Notice_%20Zero%20Sievert.pdf")
        }
        _lx = (ga_link2_x - (ga_link_w / 2))
        _ly = (ga_link2_y - (ga_link_h / 2))
        if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        {
            if mouse_check_button_released(mb_left)
                url_open("https://gameanalytics.com/privacy/")
        }
    }
}
