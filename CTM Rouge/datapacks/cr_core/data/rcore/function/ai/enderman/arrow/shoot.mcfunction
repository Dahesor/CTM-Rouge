scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this

execute facing entity @r[tag=__this,scores={join_game=1..},gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~

data modify storage run: i set value {x:0f,y:0f}
execute store result storage run: i.x float -0.001 run data get entity @s Rotation[0] 1000
execute store result storage run: i.y float -0.001 run data get entity @s Rotation[1] 1000
data modify storage run: Owner set from entity @s UUID

execute anchored eyes rotated as @s positioned ^ ^-0.2 ^0.5 run function rcore:ai/enderman/arrow/__summon_arrow with storage run: i


tag @a remove __this