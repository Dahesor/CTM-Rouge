data modify storage ram: disjoint.edges append from storage ram: disjoint.edges[0]
data remove storage ram: disjoint.edges[0]

scoreboard players remove #count calculator.cr 1
execute if score #count calculator.cr matches 1.. run function gen:disjoint/open/it