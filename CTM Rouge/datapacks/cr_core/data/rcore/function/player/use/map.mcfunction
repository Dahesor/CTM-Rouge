advancement revoke @s only rcore:use/player_map
execute if score @s map.edge > $gametime data run return fail
playsound item.book.page_turn ui @s ~ ~ ~
scoreboard players set @s dialog 1