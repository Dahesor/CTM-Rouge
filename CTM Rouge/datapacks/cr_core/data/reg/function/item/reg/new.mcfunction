data modify storage run: idgen set value {count:0,id:"apple",result:""}
data modify storage run: idgen.id set from storage reg:item new.id
function reg:item/reg/__gen_title with storage run: idgen

data modify storage reg:item new.stack.components merge value {"minecraft:unbreakable":{},can_break:[{blocks:"spawner"}]}

data modify storage run: hidden set value ["minecraft:unbreakable","minecraft:can_break","minecraft:dyed_color"]
data modify storage reg:item new.stack.components."minecraft:tooltip_display".hidden_components append from storage run: hidden[]

data modify storage reg:item new.stack.components."minecraft:item_name" set value {translate:"",color:"white"}
data modify storage reg:item new.stack.components."minecraft:item_name".translate set from storage run: idgen.result

function reg:item/reg/rarity
data modify storage reg:item new.stack.components."minecraft:item_name".color set from storage reg:item new.stack.components."minecraft:lore"[0][0].color

execute store result score #max calculator.cr run data get storage reg:item new.lore_line_count
execute if score #max calculator.cr matches ..0 run scoreboard players set #max calculator.cr 1
scoreboard players set #count calculator.cr 1
data modify storage reg:item new.stack.components."minecraft:lore" append value ""
function reg:item/reg/lore_loop

data modify storage reg:item reg append from storage reg:item new