scoreboard players operation @s shop_session = @e[type=interaction,tag=__target_shop] shop_session
scoreboard players operation @s interaction = @e[type=interaction,tag=__target_shop] interaction

execute if entity @e[type=interaction,tag=__target_shop,limit=1,distance=..20,tag=cr.shop_interact.fill] run return run function rcore:shop/cashier/refresh/this

execute unless data entity @e[type=interaction,tag=__target_shop,limit=1,distance=..20] data.inStock{has_stock:true} run return run function rcore:shop/cashier/quit

data modify storage ram: shopStock set from entity @e[type=interaction,tag=__target_shop,limit=1,distance=..20] data.inStock

function rcore:shop/cashier/make_dialog

function rcore:shop/cashier/quit