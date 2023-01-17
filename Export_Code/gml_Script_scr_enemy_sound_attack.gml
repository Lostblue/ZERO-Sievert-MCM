if (object_index == obj_enemy_wolf_brown)
{
    if (state == (48 << 0))
        audio_play_sound_on(emitter_talk, snd_wolf_bark5, false, 4)
}
if (object_index == obj_enemy_big)
{
    var sound_ = choose(296, 297, 298)
    audio_play_sound_on(emitter_talk, sound_, false, 4)
}
