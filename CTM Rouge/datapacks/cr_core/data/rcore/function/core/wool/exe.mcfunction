execute if entity @s[tag=wool.locked] run return run function rcore:core/wool/lock/unlock
execute if score #loop_20 calculator.cr matches 17 if entity @s[tag=wool.gravity] run function rcore:core/wool/lock/fall
execute if entity @s[tag=!wool.idle] run function rcore:core/wool/dropped

execute unless score @s interaction matches 3.. run scoreboard players set @s interaction 3

execute if entity @s[tag=wool.idle] run function rcore:core/wool/cast/normal
execute if entity @s[tag=!wool.idle,scores={genericCD=1200..}] run function rcore:core/wool/cast/normal
execute if entity @s[tag=!wool.idle,scores={genericCD=..1199}] run function rcore:core/wool/cast/dropped