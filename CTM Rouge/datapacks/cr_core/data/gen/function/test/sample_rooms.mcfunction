data modify storage ram: rm set value []
data modify storage ram: rm append from storage map: construct.grid.cells[][].connections
scoreboard players set #count calculator.cr 0
execute positioned -50 0 -50 run fill ~ ~ ~ ~100 ~ ~100 air replace
execute positioned 0 0 0 run function gen:test/each_room