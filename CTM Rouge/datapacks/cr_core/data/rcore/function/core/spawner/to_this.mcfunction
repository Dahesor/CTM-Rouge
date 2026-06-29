execute if score #rarity calculator.cr matches 1 run data modify storage reg:shop_pool this set from storage reg:shop_pool reg[1].common
execute if score #rarity calculator.cr matches 2 run data modify storage reg:shop_pool this set from storage reg:shop_pool reg[1].rare
execute if score #rarity calculator.cr matches 3 run data modify storage reg:shop_pool this set from storage reg:shop_pool reg[1].epic
execute if score #rarity calculator.cr matches 4 run data modify storage reg:shop_pool this set from storage reg:shop_pool reg[1].legendary
execute if score #rarity calculator.cr matches 5 run data modify storage reg:shop_pool this set from storage reg:shop_pool reg[1].mythic