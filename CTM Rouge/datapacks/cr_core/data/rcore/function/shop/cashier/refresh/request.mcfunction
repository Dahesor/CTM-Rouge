scoreboard players operation $this room = @s room
scoreboard players operation $this interaction = @s interaction
scoreboard players operation $this shop_session = @s shop_session
scoreboard players set #allow calculator.cr 0
execute as @e[type=interaction,distance=..100,tag=cr.shop_interact,tag=cr.shop_interact.fill] if score @s room = $this room if score @s interaction = $this interaction if score @s shop_session = $this shop_session run scoreboard players set #allow calculator.cr 1
execute unless score #allow calculator.cr matches 1 run return run function rcore:shop/cashier/outdated


execute as @e[type=interaction,distance=..100,tag=cr.shop_interact,tag=cr.shop_interact] if score @s room = $this room if score @s interaction = $this interaction if score @s shop_session = $this shop_session run tag @s add __target_shop

execute store result score #shop_deduce calculator.cr run scoreboard players get @n[distance=..100,tag=cr.shop_interact,tag=__target_shop,type=interaction] leave_game

execute unless function rcore:shop/cashier/check_enough run return run function rcore:shop/cashier/no_money

function rcore:shop/cashier/_deduce

execute as @n[distance=..100,tag=cr.shop_interact,tag=__target_shop,type=interaction] at @s run function rcore:shop/cashier/refresh/post