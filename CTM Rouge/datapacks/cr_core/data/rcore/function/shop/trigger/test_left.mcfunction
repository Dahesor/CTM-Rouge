tag @s remove __target_shop
scoreboard players set #test calculator.cr 0
execute on attacker run scoreboard players set #test calculator.cr 1
execute if score #test calculator.cr matches 1 run tag @s add __target_shop
execute if score #test calculator.cr matches 1 run data remove entity @s attack