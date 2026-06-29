execute as @e[type=interaction,tag=pre.game_clear,tag=cr.shop_interact,distance=..100] at @s run function gen:place/room/post/shop/boot_self

execute as @e[type=interaction,tag=cr.shop_interact,distance=..100,tag=__shop_uninitialized,tag=cr.shop_interact.fill] at @s run function rcore:shop/stock/restock