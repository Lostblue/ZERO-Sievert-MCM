ini_open(global.save_general)
for (var i = 0; i < array_length_1d(global.az_section); i++)
{
    if (global.az_done[i] == 1)
        ini_write_real(global.az_section[i], global.az_key[i], 1)
}
ini_close()
