advancement revoke @s only rcore:inter/right_click_interaction

execute as @e[type=interaction,tag=cr.shop_interact,distance=..15] run function rcore:shop/trigger/test_right

execute unless entity @e[type=interaction,tag=__target_shop,distance=..20] run return fail
function rcore:shop/cashier/process