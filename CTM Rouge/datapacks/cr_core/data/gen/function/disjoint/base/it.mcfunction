data modify storage ram: disjoint.input_1 set from storage ram: disjoint.edges[0].from
data modify storage ram: disjoint.input_2 set from storage ram: disjoint.edges[0].to

execute if function gen:disjoint/equal run return run function gen:disjoint/base/skip

data modify storage ram: disjoint.single_edge set from storage ram: disjoint.edges[0]
execute if function gen:disjoint/forbidden run return run function gen:disjoint/base/skip

function gen:disjoint/base/connect