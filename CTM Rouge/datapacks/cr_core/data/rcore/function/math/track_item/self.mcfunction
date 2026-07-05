execute unless entity @a[distance=..6,scores={join_game=1..},gamemode=!spectator] run return fail

execute facing entity @p[scores={join_game=1..},gamemode=!spectator,distance=..6] feet positioned ^ ^ ^1 summon marker run function rcore:math/track_item/motion

data modify storage run: motion set value [0d,0d,0d]
execute store result score $this pos_x run data get storage run: pos[0] 1000
execute store result score $this pos_y run data get storage run: pos[1] 1000
execute store result score $this pos_z run data get storage run: pos[2] 1000
data modify storage run: pos set from entity @s Pos
execute store result score @s pos_x run data get storage run: pos[0] 1000
execute store result score @s pos_y run data get storage run: pos[1] 1000
execute store result score @s pos_z run data get storage run: pos[2] 1000

execute store result storage run: motion[0] double 0.001 run scoreboard players operation $this pos_x -= @s pos_x
execute store result storage run: motion[1] double 0.001 run scoreboard players operation $this pos_y -= @s pos_y
execute store result storage run: motion[2] double 0.001 run scoreboard players operation $this pos_z -= @s pos_z

data modify entity @s Motion set from storage run: motion
execute store result entity @s Air short 1 run scoreboard players get #loop_20 calculator.cr
