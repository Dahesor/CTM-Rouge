tag @a remove magenta.f1
tag @a remove magenta.f2

scoreboard players set magenta_wool.taken data 1
data modify storage ram: map_cell set from storage map: wools[{special:"magenta_wool"}]
function rcore:core/wool/send/update_everyone