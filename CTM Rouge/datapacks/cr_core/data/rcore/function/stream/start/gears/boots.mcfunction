data modify storage reg:item this set from storage reg:item reg[{id:"team_boots"}]
function reg:item/get/prepare

data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 16711680
execute as @a[team=red] run item replace entity @s armor.feet from entity 0-0-0-0-0 container.0

data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 262399
execute as @a[team=blue] run item replace entity @s armor.feet from entity 0-0-0-0-0 container.0

data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 16514816
execute as @a[team=yellow] run item replace entity @s armor.feet from entity 0-0-0-0-0 container.0

data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:dyed_color" set value 2615040
execute as @a[team=green] run item replace entity @s armor.feet from entity 0-0-0-0-0 container.0
