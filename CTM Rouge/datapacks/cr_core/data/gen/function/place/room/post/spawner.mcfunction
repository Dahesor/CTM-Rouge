scoreboard players set $spawner_count calculator.cr 0

execute as @e[type=marker,tag=pre.game_clear,distance=..100,tag=cr.spawner] at @s run function gen:spawner/check
kill @e[type=marker,tag=dabsu.marker,distance=..100]

#For test, use only this pool
data modify storage reg:enemy_pool zrun set from storage reg:enemy_pool reg[{id:"all"}]
data modify storage reg:enemy_pool this set from storage reg:enemy_pool zrun
data modify storage reg:enemy_pool this.contents set value []
execute if score floor.level options matches 0 run data modify storage reg:enemy_pool this.contents append from storage reg:enemy_pool zrun.contents[{in_floor:[0]}]
execute if score floor.level options matches 1 run data modify storage reg:enemy_pool this.contents append from storage reg:enemy_pool zrun.contents[{in_floor:[1]}]
execute if score floor.level options matches 2 run data modify storage reg:enemy_pool this.contents append from storage reg:enemy_pool zrun.contents[{in_floor:[2]}]
data remove storage reg:enemy_pool zrun

# -> #final_count@calculator.cr
function gen:place/room/post/spawner/count

scoreboard players operation $average_difficulty calculator.cr = $difficulty options
scoreboard players operation $average_difficulty calculator.cr /= #final_count calculator.cr

execute as @e[type=marker,tag=__spawner.unintialized,limit=1,sort=random] at @s run function gen:place/room/post/spawner/each

execute as @e[type=marker,tag=__spawner.unintialized] at @s run function gen:place/room/post/spawner/void