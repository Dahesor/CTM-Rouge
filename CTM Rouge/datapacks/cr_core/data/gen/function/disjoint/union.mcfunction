#input_1: rid of the first element
#input_2: rid of the second element

data modify storage run: in set value {rid:0}
data modify storage run: in.rid set from storage ram: disjoint.input_1
execute store result score #g1 calculator.cr run function gen:disjoint/__get_set with storage run: in
data modify storage run: in.rid set from storage ram: disjoint.input_2
execute store result score #g2 calculator.cr run function gen:disjoint/__get_set with storage run: in

data modify storage ram: stack prepend value {list:[]}
function gen:disjoint/private/union_loop
data modify storage ram: disjoint.data set from storage ram: stack[0].list
data remove storage ram: stack[0]