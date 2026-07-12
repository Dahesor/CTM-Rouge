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

execute if score time data = stair_1.open_time options run function rcore:stream/game/stair_1_open/stair_1_open
execute if score time data = stair_2.open_time options run function rcore:stream/game/stair_2_open/stair_2_open
execute if score time data > GameLength options run function rcore:stream/end/end
execute as @e[type=item,tag=wool.entity] at @s run function rcore:core/wool/exe
execute if score #loop_5 calculator.cr matches 2 as @e[type=item,tag=floating_item] at @s run function rcore:math/track_item/self
execute if score #loop_20 calculator.cr matches 2 run bossbar set rcore:boss/slime_king players @a[tag=empty_set]
execute as @e[type=slime,tag=boss.slime_king] at @s run function rcore:ai/slime/tick

execute if score #loop_20 calculator.cr matches 6 run bossbar set rcore:boss/enderman players @a[tag=empty_set]
execute as @e[type=enderman,tag=boss.enderman] at @s run function rcore:ai/enderman/tick
#execute as @e[type=husk,tag=boss.mage] at @s run function rcore:ai/mage/tick
execute as @e[type=marker,tag=magic_charge] at @s run function rcore:ai/mage/charges/tick
