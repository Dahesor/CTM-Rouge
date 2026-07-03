scoreboard players set $save team 0
execute as @e[type=marker,tag=cr.tp_room] run scoreboard players operation $save team = @s team
execute if score $save team matches 1 run return run data modify storage run: icon set value "e-"
execute if score $save team matches 2 run return run data modify storage run: icon set value "l-"
execute if score $save team matches 3 run return run data modify storage run: icon set value "o-"
execute if score $save team matches 4 run return run data modify storage run: icon set value "z-"
data modify storage run: icon set value "t-"