execute store result score #rand calculator.cr run random value 1..1000 gen:loot_rarity

#rare
execute if score #rand calculator.cr matches ..500 run return 2
#epic
execute if score #rand calculator.cr matches 501..850 run return 3
#lengendary
execute if score #rand calculator.cr matches 851.. run return 4