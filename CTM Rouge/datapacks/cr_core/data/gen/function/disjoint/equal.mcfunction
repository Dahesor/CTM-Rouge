#input_1: rid of the first element
#input_2: rid of the second element

data modify storage run: in set value {rid:0}
data modify storage run: in.rid set from storage ram: disjoint.input_1
execute store result score #g1 calculator.cr run function gen:disjoint/__get_set with storage run: in
data modify storage run: in.rid set from storage ram: disjoint.input_2
execute store result score #g2 calculator.cr run function gen:disjoint/__get_set with storage run: in
execute if score #g1 calculator.cr = #g2 calculator.cr run return 1
return fail