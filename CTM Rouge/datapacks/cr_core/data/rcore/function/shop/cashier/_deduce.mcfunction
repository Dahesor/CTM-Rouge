execute if score #shop_deduce calculator.cr matches 64.. run clear @s emerald 64
execute if score #shop_deduce calculator.cr matches 64.. run scoreboard players remove #shop_deduce calculator.cr 64
execute if score #shop_deduce calculator.cr matches 32.. run clear @s emerald 32
execute if score #shop_deduce calculator.cr matches 32.. run scoreboard players remove #shop_deduce calculator.cr 32
execute if score #shop_deduce calculator.cr matches 16.. run clear @s emerald 16
execute if score #shop_deduce calculator.cr matches 16.. run scoreboard players remove #shop_deduce calculator.cr 16
execute if score #shop_deduce calculator.cr matches 8.. run clear @s emerald 8
execute if score #shop_deduce calculator.cr matches 8.. run scoreboard players remove #shop_deduce calculator.cr 8
execute if score #shop_deduce calculator.cr matches 4.. run clear @s emerald 4
execute if score #shop_deduce calculator.cr matches 4.. run scoreboard players remove #shop_deduce calculator.cr 4
execute if score #shop_deduce calculator.cr matches 2.. run clear @s emerald 2
execute if score #shop_deduce calculator.cr matches 2.. run scoreboard players remove #shop_deduce calculator.cr 2
execute if score #shop_deduce calculator.cr matches 1.. run clear @s emerald 1
execute if score #shop_deduce calculator.cr matches 1.. run scoreboard players remove #shop_deduce calculator.cr 1

execute if score #shop_deduce calculator.cr matches 1.. run function rcore:shop/cashier/_deduce


return 1
scoreboard players set #shop_deduce calculator.cr 10