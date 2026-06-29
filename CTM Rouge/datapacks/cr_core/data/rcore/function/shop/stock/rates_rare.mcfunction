execute store result score #rand calculator.cr run random value 1..1000 gen:shop_rarity

#rare
execute if score #rand calculator.cr matches ..320 run return 2
#epic
execute if score #rand calculator.cr matches 321..750 run return 3
#lengendary
execute if score #rand calculator.cr matches 751.. run return 4