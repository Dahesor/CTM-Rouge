execute unless data storage reg:item new.stack.components."minecraft:tooltip_style" run function reg:item/reg/frame

execute if data storage reg:item new{rarity:"common"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"普通",color:"green",italic:false}]
execute if data storage reg:item new{rarity:"rare"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"稀有",color:"#237bff",italic:false}]
execute if data storage reg:item new{rarity:"epic"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"史诗",color:"light_purple",italic:false}]
execute if data storage reg:item new{rarity:"legendary"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"传说",color:"gold",italic:false}]
execute if data storage reg:item new{rarity:"mythic"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"k",color:"red",obfuscated:true,italic:false},{text:"神话",obfuscated:false},"k"]
execute if data storage reg:item new{rarity:"initial"} run return run data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"初始",color:"gray",italic:false}]

data modify storage reg:item new.stack.components."minecraft:lore" append value [{text:"特殊",color:"yellow",italic:false}]
