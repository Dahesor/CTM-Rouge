execute store result score #hp calculator.cr run data get entity @s Health
execute store result bossbar rcore:boss/iron_golem value run scoreboard players get #hp calculator.cr
execute if score #hp calculator.cr matches ..150 run effect give @s speed 30 1
scoreboard players operation $this room = @s room

execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/iron_golem players @a[tag=__this]
tag @a remove __this
data modify entity @s anger_end_time set value 999999999999999999L