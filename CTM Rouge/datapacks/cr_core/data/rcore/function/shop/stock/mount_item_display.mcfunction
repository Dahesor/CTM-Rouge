tag @s add game_clear
tag @s add shop_item_mount
scoreboard players operation @s interaction = $this interaction

ride @n[type=item,tag=__unmounted] mount @s
tag @n[type=item,tag=__unmounted] remove __unmounted