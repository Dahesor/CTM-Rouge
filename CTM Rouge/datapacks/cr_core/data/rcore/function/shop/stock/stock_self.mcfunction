tag @s remove __shop_uninitialized
execute if entity @s[tag=shop.has_lime_wool] if data entity @s data.inStock{has_stock:true} run scoreboard players set lime_wool.taken data 0
tag @s remove shop.has_lime_wool
function rcore:shop/cashier/post_purchase
function rcore:shop/stock/to_this

execute store result score #rand calculator.cr run random value 0..99999999 gen:shop_restock
execute store result score #max calculator.cr run data get storage reg:shop_pool this
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function rcore:shop/stock/__get_item with storage ram: i

execute if data storage reg:item this.stack.components."minecraft:custom_data".item{id:"lime_wool"} run tag @s add shop.has_lime_wool
execute if entity @s[tag=shop.has_lime_wool] run scoreboard players set lime_wool.taken data -1

data modify entity @s data.inStock.item set from storage reg:item this
data modify entity @s data.inStock.has_stock set value true
data modify entity @s data.inStock.price set value 100

execute store result score #rand calculator.cr run random value 85..115 gen:shop_price
execute store result score #price calculator.cr run data get storage reg:item this.base_price
scoreboard players operation #price calculator.cr *= #rand calculator.cr
execute store result entity @s data.inStock.price int 1 run scoreboard players operation #price calculator.cr /= #100 calculator.cr


scoreboard players operation $this interaction = @s interaction
function reg:item/get/model/this

execute positioned ~ ~0.2 ~ summon item_display run function rcore:shop/stock/mount_item_display
scoreboard players add @s shop_session 1