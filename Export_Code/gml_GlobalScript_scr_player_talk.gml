function scr_player_talk() //gml_Script_scr_player_talk
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_id
    var speaker_enum_id = speak_nearest.npc_speaker_id[speaker_id_]
    if keyboard_check_pressed(vk_escape)
    {
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_click_text_npc, 9, false)
    }
    if mouse_check_button_pressed(mb_left)
    {
        var _n_opzioni = array_length_2d(speak_nearest.text, speaker_enum_id)
        var _opzione_selezionata = -1
        for (var i = 0; i < _n_opzioni; i++)
        {
            if scr_mouse_inside((camx + 24), ((camy + 72) + (i * 12)), 96, 12)
                _opzione_selezionata = i
        }
        if (_opzione_selezionata != -1)
        {
            var _dia_tipo = speak_nearest.dia_type[speaker_enum_id][_opzione_selezionata]
            switch _dia_tipo
            {
                case (0 << 0):
                    state = gml_Script_scr_player_state_move
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (1 << 0):
                    state = gml_Script_scr_player_ask
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (2 << 0):
                    state = gml_Script_scr_player_quest_list
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (3 << 0):
                    if (speak_nearest.npc_trader_id[speaker_id_] != (0 << 0))
                    {
                        var _can_trade = 1
                        if (speaker_id_ == (63 << 0))
                        {
                            if (global.quest_unique_done[(172 << 0)] == 0)
                            {
                                _can_trade = 0
                                with (obj_junk_trader)
                                {
                                    obj_player.state = gml_Script_scr_player_state_move
                                    scr_draw_npc_text(id, (84 << 0))
                                }
                            }
                        }
                        if (_can_trade == 1)
                        {
                            trading = 1
                            looting = 0
                            global.page_trader = 0
                            if (room == r_hub)
                                global.speaker_nearest.money_trader = global.trader_money_all
                            scr_open_inventory()
                            scr_load_trader_item()
                            state = gml_Script_scr_player_state_inventory
                            audio_play_sound(snd_ui_click_text_npc, 9, false)
                        }
                    }
                    break
                case (6 << 0):
                    state = gml_Script_scr_player_repair_equipment
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (7 << 0):
                    state = gml_Script_scr_player_heal_me
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (8 << 0):
                    obj_player.state = gml_Script_scr_player_state_choose_map
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (9 << 0):
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    var prezzo = 5000
                    if (global.cc_enter_paid == 0)
                    {
                        if (global.player_money >= prezzo)
                        {
                            global.player_money -= prezzo
                            global.cc_enter_paid = 1
                            with (obj_solid_crismon_base_ingresso)
                                instance_destroy()
                            state = gml_Script_scr_player_state_move
                            scr_draw_text_with_box("You can now enter the base")
                        }
                        else
                            scr_draw_text_with_box("You don't have enough Roubles")
                    }
                    else
                        scr_draw_text_with_box("You have already paid")
                    break
                case (4 << 0):
                    scr_draw_text_with_box("in development")
                    break
                case (5 << 0):
                    scr_draw_text_with_box("in development")
                    break
                case (10 << 0):
                    global.text_custom_question = obj_controller.dia_type_answer[speaker_enum_id][_opzione_selezionata]
                    state = gml_Script_scr_player_show_answer_custom
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    global.az_done[(12 << 0)] = 1
                    break
                case (11 << 0):
                    if (global.az_done[(13 << 0)] == 0)
                    {
                        global.text_custom_question = obj_controller.dia_type_answer[speaker_enum_id][_opzione_selezionata]
                        state = gml_Script_scr_player_show_text_custom
                        audio_play_sound(snd_ui_click_text_npc, 9, false)
                        global.text_custom_index = _dia_tipo
                    }
                    else
                        scr_draw_text_with_box("You have already accepted the proposal")
                    break
                case (12 << 0):
                    state = gml_Script_scr_player_refill
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (13 << 0):
                    var _can_get_equipment = 0
                    var _money = global.player_money
                    ini_open(global.save_inventory)
                    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                    if (number_of_items > 0)
                    {
                        for (i = 1; i <= number_of_items; i++)
                        {
                            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                            var _value = ((item_value[temp_item_id] * temp_item_qnt) * global.diff_setting[(3 << 0)])
                            _money += _value
                        }
                    }
                    ini_close()
                    ini_open(global.save_player_chest)
                    for (var k = 0; k < global.storage_slot_unlocked; k++)
                    {
                        number_of_items = ini_read_real(("chest_" + string(k)), "quanti_item", 0)
                        for (i = 0; i < number_of_items; i++)
                        {
                            temp_item_id = ini_read_real(("chest_" + string(k)), ("item_id_N_" + string(i)), 0)
                            temp_item_qnt = ini_read_real(("chest_" + string(k)), ("item_quantità_N_" + string(i)), 0)
                            _value = ((item_value[temp_item_id] * temp_item_qnt) * global.diff_setting[(3 << 0)])
                            _money += _value
                        }
                    }
                    ini_close()
                    var _min_amount = 10000
                    if (_money <= _min_amount)
                        _can_get_equipment = 1
                    var _is_scamming = 0
                    var _money_chest = 0
                    if instance_exists(obj_chest_general)
                    {
                        with (obj_chest_general)
                        {
                            if (tipo == (0 << 0))
                            {
                                ini_open("all_loot.ini")
                                for (i = 0; i < quanti_item_effettivi; i++)
                                {
                                    temp_item_qnt = ini_read_real(("chest_" + string(id)), ("item_quantità_N_" + string(i)), 1)
                                    temp_item_id = ini_read_real(("chest_" + string(id)), ("item_id_N_" + string(i)), (0 << 0))
                                    _value = ((item_value[temp_item_id] * temp_item_qnt) * global.diff_setting[(3 << 0)])
                                    _money_chest += _value
                                }
                                ini_close()
                            }
                        }
                    }
                    if (_can_get_equipment == 1)
                    {
                        if ((_money + _money_chest) > _min_amount)
                        {
                            _can_get_equipment = 0
                            _is_scamming = 1
                        }
                    }
                    var _hardcore = 0
                    var _equipment = global.diff_setting[(30 << 0)]
                    var _ammo = global.diff_setting[(31 << 0)]
                    var _med = global.diff_setting[(32 << 0)]
                    var _consumable = global.diff_setting[(33 << 0)]
                    if (((_equipment + _med) + _consumable) > 0)
                        _hardcore = 1
                    if (_can_get_equipment == 1)
                    {
                        if _equipment
                        {
                            scr_aggiungi_item_nel_file_inventario((3 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((410 << 0), 1)
                        }
                        if (_equipment && _ammo)
                            scr_aggiungi_item_nel_file_inventario((215 << 0), 75)
                        if _med
                        {
                            scr_aggiungi_item_nel_file_inventario((229 << 0), 4)
                            scr_aggiungi_item_nel_file_inventario((231 << 0), 2)
                            scr_aggiungi_item_nel_file_inventario((230 << 0), 2)
                        }
                        if _consumable
                        {
                            scr_aggiungi_item_nel_file_inventario((582 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((582 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((269 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((243 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((243 << 0), 1)
                            scr_aggiungi_item_nel_file_inventario((245 << 0), 1)
                        }
                    }
                    if (_can_get_equipment == 1 && _hardcore == 1 && _is_scamming == 0)
                    {
                        state = gml_Script_scr_player_state_move
                        scr_draw_npc_text(obj_tradr_bar, (119 << 0))
                    }
                    if (_can_get_equipment == 0 && _hardcore == 1 && _is_scamming == 0)
                    {
                        state = gml_Script_scr_player_state_move
                        scr_draw_npc_text(obj_tradr_bar, (117 << 0))
                    }
                    if (_can_get_equipment == 0 && _hardcore == 1 && _is_scamming == 1)
                    {
                        state = gml_Script_scr_player_state_move
                        scr_draw_npc_text(obj_tradr_bar, (120 << 0))
                    }
                    if (_hardcore == 0)
                        scr_draw_text_with_box("You can only receive equipment by activating hardcore difficulty options")
                    break
            }

        }
    }
    return;
}

