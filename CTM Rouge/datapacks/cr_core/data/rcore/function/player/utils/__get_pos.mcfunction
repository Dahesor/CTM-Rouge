tp @s ~ ~ ~ ~ ~
data modify storage run: pos set from entity @s Pos
execute store result score $this pos_x run data get storage run: pos[0]
execute store result score $this pos_z run data get storage run: pos[2]
execute store result score $this rot_xz run data get entity @s Rotation[0]

scoreboard players add $this rot_xz 180
scoreboard players operation $this rot_xz %= #360 calculator.cr
scoreboard players remove $this rot_xz 180
kill
