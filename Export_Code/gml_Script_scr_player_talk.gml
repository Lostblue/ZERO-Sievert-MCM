var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
var speak_nearest = global.speaker_nearest
var speaker_id_ = global.speaker_nearest.npc_id
if keyboard_check_pressed(vk_escape)
{
    obj_controller.can_pause = 0
    state = 22
    audio_play_sound(snd_ui_click_text_npc, 9, false)
}
if mouse_check_button_pressed(mb_left)
{
    if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
    {
        state = 22
        audio_play_sound(snd_ui_click_text_npc, 9, false)
    }
    if scr_mouse_inside((camx + 24), ((camy + 72) + 36), 96, 12)
    {
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
                        obj_player.state = 22
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
                state = 23
                audio_play_sound(snd_ui_click_text_npc, 9, false)
            }
        }
        if (speaker_id_ == (52 << 0))
        {
            obj_player.state = 39
            obj_player.search_item_upgrade = 1
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if (speaker_id_ == (50 << 0))
        {
            obj_player.state = 25
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
    if (speaker_id_ == (1 << 0) || speaker_id_ == (2 << 0))
    {
        if scr_mouse_inside((camx + 24), ((camy + 72) + 36), 96, 12)
        {
            global.ho_documenti = 0
            ini_open(global.save_inventory)
            var number_of_items = ini_read_real("Inventory", "Number of items", 0)
            if (number_of_items > 0)
            {
                for (var i = 1; i <= number_of_items; i++)
                {
                    var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                    var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                    if (item_categoria[temp_item_id] == (10 << 0))
                    {
                        if (temp_item_qnt > 0)
                            global.ho_documenti = 1
                    }
                }
            }
            ini_close()
            state = 42
        }
    }
    if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
    {
        state = 43
        audio_play_sound(snd_ui_click_text_npc, 9, false)
    }
    if scr_mouse_inside((camx + 24), ((camy + 72) + 24), 96, 12)
    {
        var special = 0
        if (speaker_id_ == (20 << 0))
        {
            audio_play_sound(snd_ui_click_text_npc, 9, false)
            special = 1
            var prezzo = 5000
            if (global.cc_enter_paid == 0)
            {
                if (global.player_money >= prezzo)
                {
                    global.player_money -= prezzo
                    global.cc_enter_paid = 1
                    with (obj_solid_crismon_base_ingresso)
                        instance_destroy()
                    state = 22
                    scr_draw_text_with_box("You can now enter the base")
                }
            }
            else
                scr_draw_text_with_box("You have already paid")
        }
        if (special == 0)
        {
            state = 47
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
    if scr_mouse_inside((camx + 24), ((camy + 72) + 48), 96, 12)
    {
        if (speaker_id_ == (53 << 0))
        {
            state = 41
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if (speaker_id_ == (41 << 0) || speaker_id_ == (47 << 0))
            scr_draw_text_with_box("in development")
    }
    if scr_mouse_inside((camx + 24), ((camy + 72) + 60), 96, 12)
    {
        if (speaker_id_ == (53 << 0))
        {
            special = 1
            state = 44
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
}
