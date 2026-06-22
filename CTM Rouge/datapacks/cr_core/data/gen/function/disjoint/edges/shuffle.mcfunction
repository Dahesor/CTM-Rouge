data modify storage ram: stack prepend value {list:[]}
execute store result score #max calculator.cr run data get storage ram: disjoint.edges
function gen:disjoint/edges/_shuffling
data modify storage ram: disjoint.edges set from storage ram: stack[0].list
data remove storage ram: stack[0]