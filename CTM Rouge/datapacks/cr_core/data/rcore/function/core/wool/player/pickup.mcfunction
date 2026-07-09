
scoreboard players operation $this team = @s team
execute as @e[type=item,tag=wool.entity,distance=..100] run function rcore:core/wool/player/__check_allowed

execute unless entity @e[type=item,tag=wool.entity,distance=..100,tag=__this] run return fail
execute as @n[type=item,tag=wool.entity,tag=__this] run function rcore:core/wool/player/pick_self
tag @e[type=item,tag=wool.entity] remove __this

item replace entity @s armor.head from entity 0-0-0-0-0 container.0
tag @s add has_wool

playsound entity.player.levelup master @s ~ ~ ~ 1 1.1 1
scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team at @s run playsound crouge:tp.captured master @s ~ ~ ~ 1 0.95 1
execute as @a[scores={join_game=1..}] unless score @s team = $this team at @s run playsound crouge:ui.warning master @s ~ ~ ~ 1 1 1
execute as @a[scores={join_game=0}] at @s run playsound crouge:tp.captured master @s ~ ~ ~ 1 1 1
data modify storage run: id set from storage ram: item.components."minecraft:custom_data".item.id
function rcore:core/wool/player/change_score

execute if items entity @s armor.head *[custom_data~{item:{id:"gray_wool"}}] run return run function rcore:core/wool/player/gray_pickup

## Broadcast

    data modify storage ram: item set from entity 0-0-0-0-0 Items[{Slot:0b}]
    tellraw @a [{text:"[!] ",color:"red"},{selector:"@s"},"捡起了",{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，其所在房间已在地图上暴露！"]

    data modify storage ram: broadcast set value {}
    data modify storage ram: broadcast.self set value [{text:"[✔] 您捡起了",color:"green"},{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，快把它运回基地吧！"]

    data modify storage ram: broadcast.teammate set value [{text:"[✔] ",color:"green"},{selector:"@a[tag=__this]"},"捡起了",{storage:"ram:",nbt:'item.components."minecraft:item_name"',color:"yellow",interpret:true},"，保护好这位队友！"]
    function rcore:core/tellraw/normal
## Broadcast