scoreboard players operation $this map_font = $this pos_z
scoreboard players operation $this map_font %= #9 calculator.cr
scoreboard players operation $this map_font /= #2 calculator.cr

scoreboard players operation $this map_z = $this pos_z
scoreboard players operation $this map_z /= #9 calculator.cr
scoreboard players add $this map_z 1
execute if score $this map_z matches ..0 run scoreboard players set $this map_z 1