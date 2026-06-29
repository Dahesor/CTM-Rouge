tag @s remove __temp_item
data modify entity @s Item set from storage reg:item this.stack
scoreboard players operation @s interaction = $this interaction
tag @s add __unmounted