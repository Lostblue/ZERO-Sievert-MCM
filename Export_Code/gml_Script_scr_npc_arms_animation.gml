var arms = argument0
var _patrol = 0
draw_weapon = 0
if scr_chance(0.2)
{
    if (target_for_image_scale > x)
        target_for_image_scale = (x - 2)
    else
        target_for_image_scale = (x + 2)
}
var my_id_ = id
if instance_exists(arms)
{
    with (arms)
    {
        if (linked_id == my_id_)
        {
            if (image_index > (sprite_get_number(sprite_index) - 2))
            {
                switch arms
                {
                    case 835:
                        if scr_chance(20)
                            _patrol = 1
                        break
                    case 836:
                        if scr_chance(60)
                            _patrol = 1
                        break
                    case 837:
                        if scr_chance(75)
                            _patrol = 1
                        break
                    case 838:
                        if scr_chance(0.1)
                            _patrol = 1
                        break
                    case 839:
                        break
                }

            }
        }
    }
}
if (_patrol == 1)
{
    draw_weapon = 1
    state_finito = 1
}
