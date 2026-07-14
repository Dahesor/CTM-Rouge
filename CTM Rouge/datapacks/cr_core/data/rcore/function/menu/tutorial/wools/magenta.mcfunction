data modify storage reg:item this set from storage reg:item reg[{id:"magenta_wool"}]
data modify storage ram: text set value "50%概率生成于第一层随机位置"
data modify storage run: color set value "#d42a70"


function reg:item/get/prepare
data modify storage ram: item set from entity 0-0-0-0-0 Items[{Slot:0b}]
data modify storage ram: dialog.dialog set value {type:"notice",title:"羊毛说明",body:[{type:"plain_message",contents:{text:"",font:"crouge:title",extra:[""]}},{type:"item",item:{id:"structure_void"}},{type:"plain_message",contents:["","\n",""]},{type:"plain_message",contents:""},{type:"plain_message",contents:[""]}],action:{label:{translate:"gui.done"}},pause:false}

data modify storage ram: item.components."minecraft:item_name".color set from storage run: color
data modify storage ram: dialog.dialog.body[0].contents.extra[0] set from storage ram: item.components."minecraft:item_name"
data modify storage ram: dialog.dialog.body[1].item set from storage ram: item
data modify storage ram: dialog.dialog.body[2].contents[2] set from storage ram: item.components."minecraft:lore"[-1]
data modify storage ram: dialog.dialog.body[2].contents[0] set from storage ram: item.components."minecraft:lore"[-2]
data modify storage ram: dialog.dialog.body[3].contents set from storage ram: text

data remove storage ram: item.components."minecraft:lore"[-1]
data remove storage ram: item.components."minecraft:lore"[-1]
data remove storage ram: item.components."minecraft:lore"[-1]
data remove storage ram: item.components."minecraft:lore"[0]
data remove storage ram: item.components."minecraft:lore"[0]
data modify storage ram: item.components."minecraft:lore"[].italic set value true
data modify storage ram: item.components."minecraft:lore"[].extra append value "\n"
data modify storage ram: dialog.dialog.body[4].contents append from storage ram: item.components."minecraft:lore"[]

function rcore:menu/render/dialog with storage ram: dialog