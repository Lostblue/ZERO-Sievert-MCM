event_inherited()
if (state == npc_state_alert[npc_id])
{
    if scr_chance((1/3))
    {
        var sound = choose(323, 324, 325)
        audio_play_sound_on(emitter_talk, sound, false, 5)
    }
}
