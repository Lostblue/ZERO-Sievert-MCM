event_inherited()
if (state == npc_state_alert[npc_id])
{
    if scr_chance(0.8333333333333334)
    {
        var sound = choose(300, 301, 302, snd_spider4, 303)
        scr_sound_at_position(sound, false, 350, 100)
    }
}
