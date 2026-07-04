scoreboard players add @s genericCD 1
execute if score @s genericCD matches 1200 run function rcore:core/wool/cast/team_unlocked
scoreboard players operation @s interaction = @s genericCD
scoreboard players operation @s interaction /= #100 calculator.cr
execute if score @s interaction matches 80.. run scoreboard players set @s interaction 80