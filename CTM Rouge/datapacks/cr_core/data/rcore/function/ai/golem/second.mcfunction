execute store result bossbar rcore:boss/iron_golem value run data get entity @s Health
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/iron_golem players @a[tag=__this]
tag @a remove __this