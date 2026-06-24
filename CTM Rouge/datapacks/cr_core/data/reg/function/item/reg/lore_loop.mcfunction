execute store result storage run: idgen.count int 1 run scoreboard players get #count calculator.cr

function reg:item/reg/__gen_lore with storage run: idgen

data modify storage reg:item new.stack.components."minecraft:lore" append value {translate:"",italic:false,color:"gray"}
data modify storage reg:item new.stack.components."minecraft:lore"[-1].translate set from storage run: idgen.result

scoreboard players add #count calculator.cr 1
execute if score #count calculator.cr <= #max calculator.cr run function reg:item/reg/lore_loop