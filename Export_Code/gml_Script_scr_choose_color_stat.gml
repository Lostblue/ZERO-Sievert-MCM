var stat_to_check = argument0
var positive_is_green = argument1
var col = 16777215
if (positive_is_green == 1)
{
    if (stat_to_check > 0)
        col = 9688723
    if (stat_to_check < 0)
        col = 5855724
}
else
{
    if (stat_to_check > 0)
        col = 5855724
    if (stat_to_check < 0)
        col = 9688723
}
return col;
