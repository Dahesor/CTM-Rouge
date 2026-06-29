scoreboard players remove @s tp.cd 1
execute if score @s tp.cd matches 2.. run particle portal ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 normal @a
execute if score @s tp.cd matches ..0 run function rcore:player/utils/tp/go