scoreboard players add $this pos_x 12

scoreboard players set @s map_x 0
execute if score $this pos_x matches 512.. run scoreboard players add @s map_x 900000000
execute if score $this pos_x matches 512.. run scoreboard players remove $this pos_x 512

execute if score $this pos_x matches 256.. run scoreboard players add @s map_x 80000000
execute if score $this pos_x matches 256.. run scoreboard players remove $this pos_x 256

execute if score $this pos_x matches 128.. run scoreboard players add @s map_x 7000000
execute if score $this pos_x matches 128.. run scoreboard players remove $this pos_x 128

execute if score $this pos_x matches 64.. run scoreboard players add @s map_x 600000
execute if score $this pos_x matches 64.. run scoreboard players remove $this pos_x 64

execute if score $this pos_x matches 32.. run scoreboard players add @s map_x 50000
execute if score $this pos_x matches 32.. run scoreboard players remove $this pos_x 32

execute if score $this pos_x matches 16.. run scoreboard players add @s map_x 4000
execute if score $this pos_x matches 16.. run scoreboard players remove $this pos_x 16

execute if score $this pos_x matches 8.. run scoreboard players add @s map_x 300
execute if score $this pos_x matches 8.. run scoreboard players remove $this pos_x 8

execute if score $this pos_x matches 4.. run scoreboard players add @s map_x 20
execute if score $this pos_x matches 4.. run scoreboard players remove $this pos_x 4

execute if score $this pos_x matches 2.. run scoreboard players add @s map_x 1

