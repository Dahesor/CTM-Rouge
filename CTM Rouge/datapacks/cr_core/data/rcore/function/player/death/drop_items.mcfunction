$clear @s emerald $(i)
execute if score #count calculator.cr matches 1.. run tellraw @s {"text":"[!] 您掉落了","color":"red","extra":[{"score":{name:"#count",objective:"calculator.cr"},"color":"green"},{"text":"颗绿宝石","color":"red"}]}

data modify storage run: i set value {x:0,y:0,z:0}
data modify storage run: Pos set from entity @s LastDeathLocation.pos
execute store result storage run: i.x double 1 run data get storage run: Pos[0]
execute store result storage run: i.y double 1 run data get storage run: Pos[1]
execute store result storage run: i.z double 1 run data get storage run: Pos[2]

execute if items entity @s armor.head *[custom_data~{item:{class:"wool"}}] run scoreboard players set #drop_wool calculator.cr 1

execute store result score #item_count calculator.cr run clear @s sponge[custom_data~{isTerraRestore:true}]
execute if score #item_count calculator.cr matches 1.. run tellraw @s {"text":"[!] 您掉落了","color":"red","extra":[{"score":{name:"#item_count",objective:"calculator.cr"},"color":"green"},{"text":"个大地复苏","color":"red"}]}

data modify storage reg:item this set from storage reg:item reg[{id:"terra_restore"}]

function rcore:player/death/__spawn_items with storage run: i
