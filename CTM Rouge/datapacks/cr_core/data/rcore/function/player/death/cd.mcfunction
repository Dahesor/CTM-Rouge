effect give @s darkness 2 0 true
tp @s 0 1000 0
scoreboard players remove @s revive_cd 1
execute if score @s revive_cd matches 0 run function rcore:player/death/revive