execute unless entity @s[tag=in_room] run return fail

execute store result score #temp calculator.cr run data get storage map: upper.tp[{public:true}].urid
execute if score @s room = #temp calculator.cr run return 1

execute store result score #temp calculator.cr run data get storage map: top.tp[{public:true}].urid
execute if score @s room = #temp calculator.cr run return 1

return fail