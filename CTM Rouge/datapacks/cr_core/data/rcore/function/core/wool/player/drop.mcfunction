scoreboard players set #drop_wool calculator.cr 0
tag @s remove has_wool

data modify storage ram: item set from entity @s equipment.head
data modify storage reg:item this set value {}
data modify storage reg:item this.stack set from storage ram: item
function reg:item/get/model/wool

scoreboard players operation $this team = @s team
execute summon item_display run function rcore:core/wool/player/_mount_dropped_wool

execute as @a if score @s team = $this team run playsound crouge:ui.warning master @s ~ ~ ~
execute as @a unless score @s team = $this team run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1

tellraw @a [{text:"[!] ",color:"red"},{selector:"@s"},"掉落了",{storage:"ram:",nbt:'item.components."minecraft:item_name"',interpret:true},"！\n - 一分钟内只有该队玩家可以拾取本羊毛"]

function rcore:stream/start/gears/helmets


