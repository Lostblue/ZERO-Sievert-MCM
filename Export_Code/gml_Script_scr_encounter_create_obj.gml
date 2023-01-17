var xx = argument0
var yy = argument1
var o = argument2
var amount = argument3
var chase_player = argument4
repeat amount
{
    if (chase_player == 1)
    {
        var oo = instance_create_depth(xx, yy, 0, o)
        oo.alarm[6] = 2
    }
    else
        instance_create_depth(xx, yy, 0, o)
}
