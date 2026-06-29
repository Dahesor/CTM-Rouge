scoreboard players operation $this room = @s room

execute as @e[type=interaction,distance=..100,tag=cr.shop_interact.normal] if score @s room = $this room at @s run function rcore:shop/stock/regular
execute as @e[type=interaction,distance=..100,tag=cr.shop_interact.rare] if score @s room = $this room at @s run function rcore:shop/stock/rare

tag @s remove __shop_uninitialized

execute unless score @s leave_game matches 1.. run return run scoreboard players set @s leave_game 5

scoreboard players operation @s leave_game *= #3 calculator.cr
scoreboard players operation @s leave_game /= #2 calculator.cr