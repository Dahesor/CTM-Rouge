data modify storage ram: item set from entity 0-0-0-0-0 Items[{Slot:0b}]

tellraw @a [{text:"[!] ",color:"red"},"有玩家捡起了",{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，其所在房间已在地图上暴露！"]

tellraw @a[scores={join_game=..0}] [{text:"[内幕] 捡起羊毛的是",color:"gray"},{selector:"@s"}]

data modify storage ram: broadcast set value {}
data modify storage ram: broadcast.self set value [{text:"[✔] 您捡起了",color:"green"},{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，快把送到§c§l其他队伍§r的基地吧！"]

data modify storage ram: broadcast.teammate set value [{text:"[✔] ",color:"green"},{selector:"@a[tag=__this]"},"捡起了",{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，保护好这位队友！"]
function rcore:core/tellraw/normal