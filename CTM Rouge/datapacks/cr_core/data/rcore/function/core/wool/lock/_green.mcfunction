bossbar remove rcore:boss/slime_king
execute as @e[type=slime,tag=boss.slime_king] run function gen:place/erase/kill
execute as @e[type=slime,tag=slime_king_sup] run function gen:place/erase/kill