display_set_gui_size(480, 270)
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(240, 240, "- press any key to continue -")
if (fade_start == 1)
    draw_sprite_ext(s_16x16, 0, 0, 0, 30, 17, 0, c_black, fade_alpha)
