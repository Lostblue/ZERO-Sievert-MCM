var _chance = argument0
var _angle = argument1
var _k = argument2
if scr_chance(_chance)
    weapon_pointing_amount = choose((-_angle), _angle, 0)
weapon_pointing_direction += (weapon_pointing_amount * _k)
