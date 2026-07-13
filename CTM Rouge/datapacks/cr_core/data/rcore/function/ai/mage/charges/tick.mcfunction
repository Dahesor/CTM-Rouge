#tick as marker

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 1200.. run return run function rcore:ai/mage/charges/destory

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[scores={join_game=1..},gamemode=!spectator,dx=1,dy=1,dz=1] on vehicle run kill

execute on vehicle run return fail
# snowball hit

execute positioned ^ ^ ^0.7 run function rcore:ai/mage/charges/on_hit

function rcore:ai/mage/charges/destory