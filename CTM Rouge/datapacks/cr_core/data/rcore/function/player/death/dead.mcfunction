scoreboard players reset @s death
scoreboard players reset @s tp.cd
scoreboard players reset @s tp.target
tag @s remove map.tp
dialog clear @s
scoreboard players operation @s revive_cd = REVIVE_COOLDOWN options
gamemode spectator @s

title @s times 0 40 20
title @s title {text:"您死了",color:red}
execute as @a at @s run playsound entity.enderman.death master @s ~ ~ ~

execute store result score #count calculator.cr run clear @s emerald 0
scoreboard players operation #count calculator.cr /= #2 calculator.cr
execute store result storage ram: i.i int 1 run scoreboard players get #count calculator.cr
function rcore:player/death/drop_items with storage ram: i