execute on vehicle run kill
data modify storage ram: item set from entity @s Item
item replace entity 0-0-0-0-0 container.0 from entity @s contents
kill
particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 20 force