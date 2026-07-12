data merge entity @s {Invulnerable:true,Size:6,NoGravity:true,NoAI:true}

execute store result score @s interaction run data get entity @s Health
scoreboard players remove @s interaction 400
scoreboard players operation @s interaction /= #16 calculator.cr
scoreboard players add @s interaction 3
execute if score @s interaction matches ..3 run scoreboard players set @s interaction 3