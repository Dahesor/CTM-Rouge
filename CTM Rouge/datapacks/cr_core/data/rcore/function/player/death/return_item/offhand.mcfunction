data modify storage core:player itemStack set from storage core:player data[0].backpack.equipment.offhand
data modify storage core:player itemStack.Slot set value 0b
data modify entity 0-0-0-0-0 Items set value []
data modify entity 0-0-0-0-0 Items append from storage core:player itemStack
item replace entity @s weapon.offhand from entity 0-0-0-0-0 container.0