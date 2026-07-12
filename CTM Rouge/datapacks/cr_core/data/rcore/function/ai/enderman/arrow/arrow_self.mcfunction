tag @s remove __unintialized
data modify storage run: i set value {u:0d,v:0d}
execute store result storage run: i.u double 0.01 run random value -20..20 gen:trivial
execute store result storage run: i.v double 0.01 run random value -20..20 gen:trivial
function rcore:ai/enderman/arrow/__spread_arrow with storage run: i

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
data modify entity @s Owner set from storage run: Owner