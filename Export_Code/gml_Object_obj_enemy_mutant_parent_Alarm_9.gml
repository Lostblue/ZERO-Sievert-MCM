if (hp_set == 0)
{
    hp *= global.diff_setting[(28 << 0)]
    hp = clamp(hp, 1, 99999)
    hp_set = 1
}
event_inherited()
