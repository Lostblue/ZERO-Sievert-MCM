var arms = argument0
var patrol = 0
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
                        if scr_chance(5)
                            patrol = 1
                        break
                    case 836:
                        if (room == r_hub)
                        {
                            if (distance_to_object(obj_bancone_hub) < 16)
                            {
                                if scr_chance(0.7)
                                {
                                    patrol = 1
                                    my_id_.path_timer = 300
                                    my_id_.state = (27 << 0)
                                    my_id_.draw_weapon = 1
                                }
                            }
                            else if scr_chance(2)
                                patrol = 1
                        }
                        else if scr_chance(2)
                            patrol = 1
                        break
                    case 837:
                        if (room == r_hub)
                        {
                            if (distance_to_object(obj_bancone_hub) < 16)
                            {
                                if scr_chance(0.7)
                                {
                                    patrol = 1
                                    my_id_.path_timer = 300
                                    my_id_.state = (27 << 0)
                                    my_id_.draw_weapon = 1
                                }
                            }
                            else if scr_chance(2)
                                patrol = 1
                        }
                        else if scr_chance(2)
                            patrol = 1
                        break
                    case 838:
                        if scr_chance(0.1)
                            patrol = 1
                        break
                    case 839:
                        break
                }

            }
        }
    }
}
if (patrol == 1)
{
    my_id_.draw_weapon = 1
    if (room == r_hub)
        my_id_.state = (4 << 0)
    else
        my_id_.state = (8 << 0)
}
target = scr_find_target_for_human()
if (target != -4)
{
    switch target_relation
    {
        case (2 << 0):
            hspd = 0
            vspd = 0
            state = (12 << 0)
            draw_weapon = 1
            break
        case (0 << 0):
            if (arms != 838 && arms != 839)
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
                draw_weapon = 1
            }
            break
        case (1 << 0):
            break
    }

}
