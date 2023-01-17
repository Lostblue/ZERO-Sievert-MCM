if scr_chance(global.sk_k[(72 << 0)])
{
    if scr_chance(global.sk_k[(72 << 0)])
    {
        if scr_chance(global.sk_k[(72 << 0)])
        {
            if (hp < 100)
                hp += 30
            else
                hp *= 1.3
        }
        else if (hp < 100)
            hp += 20
        else
            hp *= 1.2
    }
    else if (hp < 100)
        hp += 10
    else
        hp *= 1.1
}
