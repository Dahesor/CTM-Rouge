execute store result score #hp calculator.cr run data get entity @s Health
execute store result bossbar rcore:boss/just value run scoreboard players get #hp calculator.cr
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
scoreboard players set #success calculator.cr 0
execute as @a[tag=__this,gamemode=!spectator] at @s run function rcore:ai/justice/in_field
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/just players @a[tag=__this]
tag @a remove __this

execute unless score #success calculator.cr matches 1 run function rcore:ai/justice/heal


scoreboard players set #success calculator.cr 0
function rcore:ai/justice/__call_marker with entity @s data
execute unless score #success calculator.cr matches 1 run function rcore:ai/justice/tp_home