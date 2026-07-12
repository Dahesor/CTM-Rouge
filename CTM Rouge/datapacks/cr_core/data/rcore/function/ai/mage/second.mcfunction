execute store result score #hp calculator.cr run data get entity @s Health
execute store result bossbar rcore:boss/mage value run scoreboard players get #hp calculator.cr
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/mage players @a[tag=__this]
tag @a remove __this

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 4.. run function rcore:ai/mage/fire/fire