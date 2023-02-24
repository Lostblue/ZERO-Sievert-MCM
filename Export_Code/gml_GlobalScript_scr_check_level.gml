function scr_check_level() //gml_Script_scr_check_level
{
    global.esperienza = clamp(global.esperienza, 0, (global.esperienza_livello[(7 << 0)] - 1))
    if (global.esperienza >= global.esperienza_livello[(global.livello_now + 1)])
    {
        global.livello_now++
        if (global.livello_now == 3)
        {
            gml_Script_fun_ga_diff_setting(3)
            scr_draw_text_with_box("GA diff settings lvl 3")
        }
        scr_save_exp()
        if (room == r_hub)
        {
            with (obj_trader)
            {
                alarm[0] = 1
                lista_trader()
            }
            with (obj_speaker_parent)
            {
                lista_text()
                alarm[10] = 1
            }
        }
    }
    return;
}

