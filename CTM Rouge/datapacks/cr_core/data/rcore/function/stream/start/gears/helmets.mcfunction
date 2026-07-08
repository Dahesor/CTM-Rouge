data modify storage reg:item this set from storage reg:item reg[{id:"team_helmet"}]
function reg:item/get/prepare

execute if entity @s[team=red] run data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 16711680
item replace entity @s[team=red] armor.head from entity 0-0-0-0-0 container.0

execute if entity @s[team=blue] run data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 262399
item replace entity @s[team=blue] armor.head from entity 0-0-0-0-0 container.0

execute if entity @s[team=yellow] run data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 16514816
item replace entity @s[team=yellow] armor.head from entity 0-0-0-0-0 container.0

execute if entity @s[team=green] run data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 2615040
item replace entity @s[team=green] armor.head from entity 0-0-0-0-0 container.0
