execute store result score #rand calculator.cr run random value 1..1000 gen:shop_rarity

#common
execute if score #rand calculator.cr matches 0..400 run return 1
#rare
execute if score #rand calculator.cr matches 401..800 run return 2
#epic
execute if score #rand calculator.cr matches 801..960 run return 3
#lengendary
execute if score #rand calculator.cr matches 961.. run return 4