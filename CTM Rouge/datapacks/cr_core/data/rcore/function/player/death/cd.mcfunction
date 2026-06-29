effect give @s darkness 2 0 true
tp @s 0 1000 0
scoreboard players remove @s revive_cd 1
title @s actionbar {"text":"复活中……","color":"red"}
execute if score @s revive_cd matches 0 run function rcore:player/death/revive