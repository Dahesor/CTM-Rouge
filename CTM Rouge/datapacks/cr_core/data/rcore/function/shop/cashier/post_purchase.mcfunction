tag @s remove __target_shop
scoreboard players operation $this interaction = @s interaction
execute as @e[type=item_display,distance=..5,tag=shop_item_mount] if score @s interaction = $this interaction on passengers run kill
execute as @e[type=item_display,distance=..5,tag=shop_item_mount] if score @s interaction = $this interaction run kill
scoreboard players add @s shop_session 1
data modify entity @s data.inStock.has_stock set value false