execute if entity @s[tag=!wool.idle] run function rcore:core/wool/dropped

execute unless score @s interaction matches 3.. run scoreboard players set @s interaction 3

execute if entity @s[tag=wool.idle] run function rcore:core/wool/cast/normal
execute if entity @s[tag=!wool.idle,scores={genericCD=1200..}] run function rcore:core/wool/cast/normal
execute if entity @s[tag=!wool.idle,scores={genericCD=..1199}] run function rcore:core/wool/cast/dropped