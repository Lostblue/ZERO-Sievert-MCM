lista_text()
lista_trader()
lista_item()
lista_npc()
hspd = 0
vspd = 0
alarm[10] = 3
alarm[11] = 2
if (room == room1)
    alarm[7] = 1
emitter_shoot = audio_emitter_create()
audio_emitter_falloff(emitter_shoot, 128, 500, 1)
emitter_walk = audio_emitter_create()
audio_emitter_falloff(emitter_walk, 16, 164, 1)
emitter_talk = audio_emitter_create()
audio_emitter_falloff(emitter_talk, 32, 164, 1)
play_sound_death = 1
grid_faction_my = ds_grid_create(10, 10)
ds_grid_clear(grid_faction_my, 150)
follow_path = 0
path_goto_x[0] = 0
path_goto_y[0] = 0
path_create_now = 0
d_path[0] = path_add()
lista_path_x = ds_list_create()
lista_path_y = ds_list_create()
path_position_now = 0
path_color = make_color_rgb(irandom(255), irandom(255), irandom(255))
timer_visible = 0
timer_visible_max = 45
last_seen_x = 0
last_seen_y = 0
last_known_x = 0
last_known_y = 0
last_my_target_seen_x = 0
last_my_target_seen_y = 0
last_shot_x = 0
last_shot_y = 0
last_target_cover_x = 0
last_target_cover_y = 0
last_patrol_x = 0
last_patrol_y = 0
last_seen_delay_x = 0
last_seen_delay_y = 0
last_seen_delay_timer = 0
last_seen_delay_timer_max = 45
last_seen_delay = 0
move_point_x = 0
move_point_y = 0
enemy_seen = 0
image_xscale_before = 1
draw_weapon = 1
create_item_in_chest = 1
original_x = x
original_y = y
walk_time = 0
walk_time_max = 30
dir_attack = 0
can_attack = 1
attack_recovery = 70
money_trader = 0
path_timer_reset = 30
path_timer = path_timer_reset
path_to_target = path_add()
shooting = 0
reloading = 0
recoil_total = 3
target = -4
search_target_id = -4
target_relation = (0 << 0)
target_seen = -4
can_be_damaged = 1
shader_hit = 0
shader_hit_time = 2
hit = 0
hit_time = 30
hp_set = 0
reset_state_to_patrol_time = 600
weapon_pointing_direction = irandom(360)
weapon_pointing_angle = 1
weapon_pointing_amount = 0
target_for_image_scale = 0
alarm[3] = 10
riflessi = 0
riflessi_max = 20
quest_max = 0
armor_dur = 100
shoot_time = 0
shoot_time_max = 60
red_blood = 1
ammo_magazine = -1
ammo_now = 0
arma_now = (3 << 0)
ammo_id_now = 0
alpha_ = 1
a_gain = 0.1
can_talk = 1
prev_state = -1
quest_contract_is_me = 0
quest_contract_grid_pos = -1
sprite_before = 1932
state_before = 0
bullet_checked = 0
tick = 0
tick_max = 10
linked_weapon_id = -4
start_mod_weapon = 0
weapon_modded = 0
wm_timer = 0
wm_timer_max = 40
wm_timer_again = 0
wm_timer_again_max = 90
mod_id[(0 << 0)] = -1
mod_id[(1 << 0)] = -1
mod_id[(3 << 0)] = -1
mod_id[(2 << 0)] = -1
mod_id[(5 << 0)] = -1
mod_id[(6 << 0)] = -1
mod_id[(4 << 0)] = -1
mod_id[(7 << 0)] = -1
mod_id[(8 << 0)] = -1
mod_id[(9 << 0)] = -1
mod_id[(10 << 0)] = -1
ani_end = 0
wolf_alert_raggio2 = 64
wolf_ululato = 0
wolf_ululato_max = 0
tick_now = 0
tick_max = 6
tick_from_roof = 0
pos_now = 0
node_running_now = 0
node_child_now = 0
node_state_now = 3
node_action_state = 2
alert_player = 0
alert_player_max_value = 45
alert_player_max = alert_player_max_value
last_seen_x = 0
last_seen_y = 0
last_cover_pos_x = 0
last_cover_pos_y = 0
angle_min_to_rotate = 10
angle_increase_for_target = 6
bt_action_timer_now = 0
direction_to_aim = 0
dir_to_aim_x = 0
dir_to_aim_y = 0
need_reload_already_check = 0
var i = 0
tree_id[i] = (18 << 0)
tree_parent[i] = 4
tree_pos[i] = 0
tree_child[i] = []
i = 1
tree_id[i] = (19 << 0)
tree_parent[i] = 3
tree_pos[i] = 1
tree_child[i] = []
i = 2
tree_id[i] = (7 << 0)
tree_parent[i] = 3
tree_pos[i] = 2
tree_child[i] = []
i = 3
tree_id[i] = (2 << 0)
tree_parent[i] = 4
tree_pos[i] = 3
tree_child[i] = [2, 1]
i = 4
tree_id[i] = (1 << 0)
tree_parent[i] = 9
tree_pos[i] = 4
tree_child[i] = [3, 0]
i = 5
tree_id[i] = (5 << 0)
tree_parent[i] = 7
tree_pos[i] = 5
tree_child[i] = []
i = 6
tree_id[i] = (17 << 0)
tree_parent[i] = 8
tree_pos[i] = 6
tree_child[i] = []
i = 7
tree_id[i] = (4 << 0)
tree_parent[i] = 8
tree_pos[i] = 7
tree_child[i] = [5]
i = 8
tree_id[i] = (2 << 0)
tree_parent[i] = 9
tree_pos[i] = 8
tree_child[i] = [7, 6]
i = 9
tree_id[i] = (1 << 0)
tree_parent[i] = 10
tree_pos[i] = 9
tree_child[i] = [8, 4]
i = 10
tree_id[i] = (0 << 0)
tree_parent[i] = -1
tree_pos[i] = 10
tree_child[i] = [9]
var _size = array_length(tree_id)
pos_roof = 0
for (i = 0; i < _size; i++)
{
    if (tree_parent[i] == -1)
        pos_roof = i
}
for (i = 0; i < _size; i++)
{
    tree_node[i] = global.node_type[tree_id[i]]
    tree_condition_checked[i] = 9999
    tree_condition_checked_max[i] = global.node_check_condition_max[tree_id[i]]
    tree_condition_now[i] = 0
}
recoil_shooting = 0
recoil_arma = 0
human_tick = 0
human_tick_max = 7
human_tick_max_ref = human_tick_max
human_state_now = -1
human_state_before = 0
target_visto = 0
id_target_non_visto = -4
state_finito = 1
direction_to_aim = 0
dir_to_aim_x = 0
dir_to_aim_y = 0
timer_searching_target = 0
timer_searching_target_max = 900
timer_last_state = 0
timer_last_state_max = 10000
angle_min_to_rotate = 10
angle_increase_for_target = 6
shooted_first_time = 0
chase_new_target_location = 0
target_visto_prima_volta = 0
alleato_morto_vicino = 0
ally_morto_x = 0
ally_morto_y = 0
id_chest_ally_dead = -4
id_of_the_killer = -4
have_to_reload = 1
hear_target_shoot = 0
must_take_cover = 0
just_shot = 0
counter_target_seen_neutral = 0
counter_target_cover = 0
counter_target_cover_max = 5
counter_target_toggle = 1
aim_still_timer = 4000
debug_next_state = 0
tipo_arma_equipped = (0 << 0)
debug_chance_chase = 0
