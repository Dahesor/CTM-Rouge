execute store result score #rand calculator.cr run random value 1..1000 gen:shop_rarity

#mythic
execute if score $this floor matches 1.. if score lime_wool.taken data matches 0 if score #rand calculator.cr matches 975.. run return 5

#rare
execute if score #rand calculator.cr matches ..320 run return 2
#epic
execute if score #rand calculator.cr matches 321..750 run return 3
#lengendary
execute if score #rand calculator.cr matches 751.. run return 4
#mythic
execute if score #rand calculator.cr matches 751.. run return 4