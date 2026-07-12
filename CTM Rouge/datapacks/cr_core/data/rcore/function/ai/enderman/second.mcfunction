execute store result score #hp calculator.cr run data get entity @s Health
execute store result bossbar rcore:boss/enderman value run scoreboard players get #hp calculator.cr
execute if score #hp calculator.cr matches ..200 unless entity @s[tag=raging] run function rcore:ai/enderman/rage/calc
scoreboard players operation $this room = @s room

execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/enderman players @a[tag=__this]
tag @s remove active
execute if entity @a[scores={join_game=1..},tag=__this] run tag @s add active
tag @a remove __this
data modify entity @s anger_end_time set value 999999999999999999L

execute if score @s genericCD matches ..1000 if entity @a[scores={join_game=1..},gamemode=!spectator,distance=..3,tag=!in_room] run function rcore:ai/enderman/throw/random


execute positioned ~ ~100 ~ summon marker run function rcore:player/utils/__get_pos
scoreboard players operation @s pos_x = $this pos_x
scoreboard players operation @s pos_y = $this pos_y
scoreboard players operation @s pos_z = $this pos_z
scoreboard players operation @s rot_xz = $this rot_xz
# Return below
execute if score @s pos_y matches ..10 run return run function rcore:ai/enderman/tp_back

scoreboard players operation $this pos_x -= floor_2.x data
scoreboard players operation $this pos_z -= floor_2.z data

scoreboard players operation $this pos_x /= map_spacing options
scoreboard players operation $this pos_z /= map_spacing options
execute if score $this pos_x matches ..-1 run scoreboard players set $this pos_x 0
execute if score $this pos_z matches ..-1 run scoreboard players set $this pos_z 0
scoreboard players operation #save pos_x = $this pos_x
scoreboard players operation #save pos_z = $this pos_z

scoreboard players set $this floor 2
scoreboard players operation $this floor *= floor.room_count options
scoreboard players operation $this room = $this pos_z
scoreboard players operation $this room *= floor.side_length options
scoreboard players operation $this room += $this pos_x
scoreboard players operation $this room += $this floor

execute unless score $this room = @s room run function rcore:ai/enderman/tp_back