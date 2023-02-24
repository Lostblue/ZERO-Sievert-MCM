event_inherited()
if (state == npc_state_alert[npc_id])
{
    if scr_chance(0.8333333333333334)
    {
        var sound = choose(305, 306, 307, 308, 309)
        audio_play_sound_on(emitter_talk, sound, false, 5)
    }
}
