tag @s add wool.mount
tag @s add game_clear
ride @n[type=item,tag=__unmounted,distance=..10] mount @s
execute on passengers run tag @s remove __unmounted
execute on passengers run tag @s add wool.idle