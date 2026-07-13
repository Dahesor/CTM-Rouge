execute if score @s interaction matches 1 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/wind
execute if score @s interaction matches 2 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/fire
execute if score @s interaction matches 3 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/dark
execute if score @s interaction matches 4 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/slime
execute if score @s interaction matches 5 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/water
execute if score @s interaction matches 6 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/hurt
execute if score @s interaction matches 7 positioned ~-0.9 ~-0.9 ~-0.9 run function rcore:ai/mage/charges/hits/freeze

execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[scores={join_game=1..},gamemode=!spectator,dx=3,dy=3,dz=3,predicate=rcore:player/shielding] run function rcore:player/utils/misc/shield_disable