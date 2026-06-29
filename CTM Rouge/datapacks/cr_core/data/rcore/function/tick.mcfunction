execute store result score $gametime data run time query gametime
scoreboard players add #loop_20 calculator.cr 1
execute if score #loop_20 calculator.cr matches 20.. run scoreboard players set #loop_20 calculator.cr 0
execute if score #loop_20 calculator.cr matches 0 run function rcore:second
scoreboard players add #loop_5 calculator.cr 1
execute if score #loop_5 calculator.cr matches 5.. run scoreboard players set #loop_5 calculator.cr 0

# ========== pre =============

execute as @a at @s run function rcore:player/ticker
execute as @e[type=item,tag=!legal_drop] if items entity @s contents *[custom_data~{soul_bind:{}}] run kill

# ========== aft =============

#Game on
execute unless score game data matches 1.. run return fail
scoreboard players add time data 1
execute if score time data > GameLength options run function rcore:stream/end/end