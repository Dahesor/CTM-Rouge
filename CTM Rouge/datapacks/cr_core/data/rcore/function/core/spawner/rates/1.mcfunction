execute store result score #rand calculator.cr run random value 1..1000 gen:loot_rarity

#common
execute if score #rand calculator.cr matches 0..200 run return 1
#rare
execute if score #rand calculator.cr matches 201..600 run return 2
#epic
execute if score #rand calculator.cr matches 601..900 run return 3
#lengendary
execute if score #rand calculator.cr matches 901.. run return 4