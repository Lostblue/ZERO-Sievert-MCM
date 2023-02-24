function scr_get_time_gen() //gml_Script_scr_get_time_gen
{
    tempo_gen_assoluto[state] = (current_time - tempo_start)
    tempo_generazione[state] = tempo_gen_assoluto[state]
    if (state > 0)
        tempo_generazione[state] = (tempo_gen_assoluto[state] - tempo_gen_assoluto[(state - 1)])
    return;
}

