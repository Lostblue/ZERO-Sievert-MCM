event_inherited()
if (state == npc_state_alert[npc_id])
{
    if scr_chance(0.6172839506172839)
    {
        var sound = choose(274, 275, 277, 279, 280, 281, 281, 281)
        audio_play_sound_on(emitter_talk, sound, false, 5)
    }
}
