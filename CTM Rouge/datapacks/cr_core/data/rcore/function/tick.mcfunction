execute store result score $gametime data run time query gametime
scoreboard players add #loop_20 calculator.cr 1
execute if score #loop_20 calculator.cr matches 20.. run scoreboard players set #loop_20 calculator.cr 0
execute if score #loop_20 calculator.cr matches 0 run function rcore:second

# ========== pre =============

scoreboard players add time data 1
execute as @a at @s run function rcore:player/ticker

# ========== aft =============