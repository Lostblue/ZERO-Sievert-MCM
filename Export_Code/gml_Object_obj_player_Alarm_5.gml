alarm[5] = 3
if (xprevious != x || yprevious != y)
{
    var walk = choose(2, 3, 4, 5)
    audio_play_sound(walk, 10, false)
}
