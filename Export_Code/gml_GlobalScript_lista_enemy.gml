function lista_enemy() //gml_Script_lista_enemy
{
    novice_bandit_arma = choose((34 << 0), (3 << 0), (47 << 0), (23 << 0))
    regular_bandit_arma = choose((38 << 0), (4 << 0), (47 << 0), (61 << 0), (55 << 0), (80 << 0))
    expert_bandit_arma = choose((48 << 0), (74 << 0), (77 << 0), (62 << 0), (56 << 0), (82 << 0), (50 << 0))
    loner_armor2_arma = choose((47 << 0), (61 << 0), (81 << 0), (48 << 0), (62 << 0), (56 << 0), (36 << 0))
    green_army1_arma = choose((47 << 0), (61 << 0), (81 << 0), (48 << 0), (62 << 0), (56 << 0), (36 << 0))
    var bandit_name = scr_generation_name(0)
    var bandit_cognome = scr_generation_name(1)
    var bandit_nome_completo = ((bandit_name + " ") + bandit_cognome)
    a = (2 << 0)
    npc_my_id[a] = a
    npc_name[a] = bandit_nome_completo
    npc_arma[a] = novice_bandit_arma
    npc_aim_factor[a] = 2
    npc_hp[a] = 40
    npc_esperienza[a] = 10
    npc_faction[a] = (6 << 0)
    npc_chest_dropped[a] = (24 << 0)
    npc_sprite_idle[a] = 25
    npc_sprite_move[a] = 26
    npc_sprite_dead[a] = 27
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.2
    npc_prob_idle[a] = 0.3
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (3 << 0)
    npc_my_id[a] = a
    npc_name[a] = bandit_nome_completo
    npc_arma[a] = regular_bandit_arma
    npc_aim_factor[a] = 2
    npc_hp[a] = 55
    npc_esperienza[a] = 18
    npc_faction[a] = (6 << 0)
    npc_chest_dropped[a] = (24 << 0)
    npc_sprite_idle[a] = 22
    npc_sprite_move[a] = 23
    npc_sprite_dead[a] = 24
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.2
    npc_prob_idle[a] = 0.3
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (4 << 0)
    npc_my_id[a] = a
    npc_name[a] = bandit_nome_completo
    npc_arma[a] = expert_bandit_arma
    npc_aim_factor[a] = 2
    npc_hp[a] = 55
    npc_esperienza[a] = 18
    npc_faction[a] = (6 << 0)
    npc_chest_dropped[a] = (24 << 0)
    npc_sprite_idle[a] = 22
    npc_sprite_move[a] = 23
    npc_sprite_dead[a] = 24
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.2
    npc_prob_idle[a] = 0.3
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (0 << 0)
    npc_my_id[a] = a
    npc_name[a] = bandit_nome_completo
    npc_arma[a] = novice_bandit_arma
    npc_aim_factor[a] = 0.5
    npc_hp[a] = 40
    npc_esperienza[a] = 15
    npc_faction[a] = (1 << 0)
    npc_chest_dropped[a] = (28 << 0)
    npc_sprite_idle[a] = 110
    npc_sprite_move[a] = 112
    npc_sprite_dead[a] = 113
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.1
    npc_prob_idle[a] = 10
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (1 << 0)
    npc_my_id[a] = a
    npc_name[a] = bandit_nome_completo
    npc_arma[a] = loner_armor2_arma
    npc_aim_factor[a] = 1.3
    npc_hp[a] = 60
    npc_esperienza[a] = 22
    npc_faction[a] = (8 << 0)
    npc_chest_dropped[a] = (29 << 0)
    npc_sprite_idle[a] = 114
    npc_sprite_move[a] = 115
    npc_sprite_dead[a] = 116
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.5
    npc_prob_idle[a] = 0.2
    npc_prob_attack[a] = 1.5
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (17 << 0)
    npc_my_id[a] = a
    npc_name[a] = ("Soldier " + bandit_nome_completo)
    npc_arma[a] = green_army1_arma
    npc_aim_factor[a] = 2
    npc_hp[a] = 60
    npc_esperienza[a] = 20
    npc_faction[a] = (8 << 0)
    npc_chest_dropped[a] = (36 << 0)
    npc_sprite_idle[a] = 60
    npc_sprite_move[a] = 61
    npc_sprite_dead[a] = 62
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.75
    npc_prob_move[a] = 0.5
    npc_prob_idle[a] = 0.2
    npc_prob_attack[a] = 1.5
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 230
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (13 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Zombie"
    npc_arma[a] = choose((34 << 0), (3 << 0), (23 << 0))
    npc_aim_factor[a] = 1.7
    npc_hp[a] = 50
    npc_esperienza[a] = 8
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (46 << 0)
    npc_sprite_idle[a] = 87
    npc_sprite_move[a] = 88
    npc_sprite_dead[a] = 89
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.5
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.25
    npc_prob_move[a] = 0.1
    npc_prob_idle[a] = 0.2
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (9 << 0)
    npc_state_alert[a] = (11 << 0)
    npc_player_distance_alert[a] = 250
    npc_player_distance_attack[a] = 250
    npc_alert_radius[a] = 60
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 100
    a = (14 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Mutated Plant"
    npc_damage_melee[a] = 20
    npc_hp[a] = 10
    npc_esperienza[a] = 7
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (58 << 0)
    npc_sprite_idle[a] = 108
    npc_sprite_move[a] = 108
    npc_sprite_dead[a] = 109
    npc_ims_idle[a] = 0
    npc_ims_move[a] = 0
    npc_spd_not_alerted[a] = 0
    npc_spd_alerted[a] = 0
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = gml_Script_state_enemy_mutant_turret
    npc_state_alert[a] = gml_Script_state_enemy_mutant_turret
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (5 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Brown Wolf"
    npc_damage_melee[a] = 7
    npc_hp[a] = 25
    npc_esperienza[a] = 6
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (41 << 0)
    npc_sprite_idle[a] = 82
    npc_sprite_move[a] = 83
    npc_sprite_dead[a] = 84
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (22 << 0)
    npc_my_id[a] = a
    npc_name[a] = "ghoul"
    npc_damage_melee[a] = 8
    npc_hp[a] = 20
    npc_esperienza[a] = 7
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (41 << 0)
    npc_sprite_idle[a] = 150
    npc_sprite_move[a] = 151
    npc_sprite_dead[a] = 153
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 1.2
    npc_prob_idle[a] = 1.2
    npc_prob_attack[a] = 3
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (21 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Rat"
    npc_damage_melee[a] = 5
    npc_hp[a] = 15
    npc_esperienza[a] = 2
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (42 << 0)
    npc_sprite_idle[a] = 147
    npc_sprite_move[a] = 148
    npc_sprite_dead[a] = 149
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (6 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Boar"
    npc_damage_melee[a] = 18
    npc_hp[a] = 100
    npc_esperienza[a] = 18
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (44 << 0)
    npc_sprite_idle[a] = 96
    npc_sprite_move[a] = 97
    npc_sprite_dead[a] = 99
    npc_ims_idle[a] = 0.4
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.5
    npc_spd_alerted[a] = 1.25
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 6
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (38 << 0)
    npc_player_distance_alert[a] = 164
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 64
    a = (7 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Mutated Boar"
    npc_damage_melee[a] = 21
    npc_hp[a] = 120
    npc_esperienza[a] = 28
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (44 << 0)
    npc_sprite_idle[a] = 102
    npc_sprite_move[a] = 101
    npc_sprite_dead[a] = 103
    npc_ims_idle[a] = 0.4
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.5
    npc_spd_alerted[a] = 1.25
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 6
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (38 << 0)
    npc_player_distance_alert[a] = 164
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 64
    a = (9 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Spine"
    npc_damage_melee[a] = 6
    npc_hp[a] = 35
    npc_esperienza[a] = 16
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (53 << 0)
    npc_sprite_idle[a] = 105
    npc_sprite_move[a] = 106
    npc_sprite_dead[a] = 107
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 0.75
    npc_spd_not_alerted[a] = 0.5
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 6
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (8 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Mutated Spider"
    npc_damage_melee[a] = 10
    npc_hp[a] = 35
    npc_esperienza[a] = 17
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (48 << 0)
    npc_sprite_idle[a] = 93
    npc_sprite_move[a] = 94
    npc_sprite_dead[a] = 95
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 2
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (10 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Devourer"
    npc_damage_melee[a] = 15
    npc_hp[a] = 100
    npc_esperienza[a] = 35
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (50 << 0)
    npc_sprite_idle[a] = 90
    npc_sprite_move[a] = 91
    npc_sprite_dead[a] = 92
    npc_ims_idle[a] = 0.25
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 2
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 2
    npc_state_patrol[a] = (35 << 0)
    npc_state_alert[a] = (36 << 0)
    npc_player_distance_alert[a] = 240
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (11 << 0)
    npc_my_id[a] = a
    npc_name[a] = "anomaly_electric"
    npc_damage_melee[a] = 20
    npc_hp[a] = 250
    npc_esperienza[a] = 35
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (56 << 0)
    npc_sprite_idle[a] = 1928
    npc_sprite_move[a] = 1928
    npc_sprite_dead[a] = 53
    npc_ims_idle[a] = 0.5
    npc_ims_move[a] = 0
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 0.5
    npc_prob_move[a] = 5
    npc_prob_idle[a] = 1
    npc_prob_attack[a] = 0
    npc_state_patrol[a] = (62 << 0)
    npc_state_alert[a] = (63 << 0)
    npc_player_distance_alert[a] = 150
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (12 << 0)
    npc_my_id[a] = a
    npc_name[a] = "anomaly_fire"
    npc_damage_melee[a] = 20
    npc_hp[a] = 250
    npc_esperienza[a] = 35
    npc_faction[a] = (7 << 0)
    npc_chest_dropped[a] = (57 << 0)
    npc_sprite_idle[a] = 1928
    npc_sprite_move[a] = 1928
    npc_sprite_dead[a] = 54
    npc_ims_idle[a] = 0.5
    npc_ims_move[a] = 0
    npc_spd_not_alerted[a] = 0.25
    npc_spd_alerted[a] = 1
    npc_prob_move[a] = 5
    npc_prob_idle[a] = 1
    npc_prob_attack[a] = 0.1
    npc_state_patrol[a] = (60 << 0)
    npc_state_alert[a] = (61 << 0)
    npc_player_distance_alert[a] = 150
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 120
    a = (19 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Rabbit"
    npc_damage_melee[a] = 0
    npc_hp[a] = 10
    npc_esperienza[a] = 2
    npc_faction[a] = (9 << 0)
    npc_chest_dropped[a] = (51 << 0)
    npc_sprite_idle[a] = 136
    npc_sprite_move[a] = 138
    npc_sprite_dead[a] = 139
    npc_ims_idle[a] = 0.5
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 0.5
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 0.1
    npc_state_patrol[a] = (64 << 0)
    npc_state_alert[a] = (66 << 0)
    npc_player_distance_alert[a] = 64
    npc_player_distance_attack[a] = 80
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 64
    a = (20 << 0)
    npc_my_id[a] = a
    npc_name[a] = "Crow"
    npc_damage_melee[a] = 0
    npc_hp[a] = 10
    npc_esperienza[a] = 2
    npc_faction[a] = (9 << 0)
    npc_chest_dropped[a] = (52 << 0)
    npc_sprite_idle[a] = 140
    npc_sprite_move[a] = 142
    npc_sprite_dead[a] = 146
    npc_ims_idle[a] = 0.5
    npc_ims_move[a] = 1
    npc_spd_not_alerted[a] = 0.75
    npc_spd_alerted[a] = 1.5
    npc_prob_move[a] = 0.5
    npc_prob_idle[a] = 2
    npc_prob_attack[a] = 0.1
    npc_state_patrol[a] = (67 << 0)
    npc_state_alert[a] = (71 << 0)
    npc_player_distance_alert[a] = 32
    npc_player_distance_attack[a] = 32
    npc_alert_radius[a] = 90
    npc_alert_visual_distance[a] = npc_player_distance_alert[a]
    npc_alert_min_distance[a] = 32
    return;
}

