scoreboard players operation @s map_font = $this pos_z
scoreboard players operation @s map_font %= #9 calculator.cr
scoreboard players operation @s map_font /= #2 calculator.cr

scoreboard players operation @s map_z = $this pos_z
scoreboard players operation @s map_z /= #9 calculator.cr
scoreboard players add @s map_z 1
execute if score @s map_z matches ..0 run scoreboard players set @s map_z 1