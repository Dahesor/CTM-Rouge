#tick as marker

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 1200.. run return run function rcore:ai/mage/charges/destory

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[scores={join_game=1..},gamemode=!spectator,dx=1,dy=1,dz=1] on vehicle run kill

execute on vehicle run return fail
# snowball hit

execute if score @s interaction matches 1 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/wind
execute if score @s interaction matches 2 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/fire
execute if score @s interaction matches 3 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/dark
execute if score @s interaction matches 4 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/slime
execute if score @s interaction matches 5 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/water
execute if score @s interaction matches 6 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/hurt
execute if score @s interaction matches 7 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/freeze


function rcore:ai/mage/charges/destory