scoreboard players operation $this calculator.cr = #z calculator.cr
scoreboard players operation $this calculator.cr *= floor.side_length options
scoreboard players operation $this calculator.cr += #x calculator.cr

data modify storage ram: disjoint.forbidden_edges append value {from:0,to:0}
execute store result storage ram: disjoint.forbidden_edges[-1].to int 1 run scoreboard players get $this calculator.cr
execute store result storage ram: disjoint.forbidden_edges[-1].from int 1 run scoreboard players operation $this calculator.cr -= floor.side_length options