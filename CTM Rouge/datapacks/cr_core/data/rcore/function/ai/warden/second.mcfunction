execute store result score #hp calculator.cr run data get entity @s Health
execute store result bossbar rcore:boss/warden value run scoreboard players get #hp calculator.cr
execute if score #hp calculator.cr matches ..250 unless entity @s[tag=raging] run function rcore:ai/warden/enrage
scoreboard players operation $this room = @s room

execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[tag=__this] add sneak_with_knockres
title @a[tag=sneak_with_knockres] actionbar "下蹲以获得击退抗性和免伤"
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/warden players @a[tag=__this]
tag @a remove __this