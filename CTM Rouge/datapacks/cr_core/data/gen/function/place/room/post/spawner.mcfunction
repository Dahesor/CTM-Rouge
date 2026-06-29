scoreboard players set $spawner_count calculator.cr 0

execute as @e[type=marker,tag=pre.game_clear,distance=..100,tag=cr.spawner] at @s run function gen:spawner/check
kill @e[type=marker,tag=dabsu.marker,distance=..100]

#For test, use only this pool
data modify storage reg:enemy_pool this set from storage reg:enemy_pool reg[{id:"undead_regular"}]

# -> #final_count@calculator.cr
function gen:place/room/post/spawner/count

scoreboard players operation $average_difficulty calculator.cr = $difficulty options
scoreboard players operation $average_difficulty calculator.cr /= #final_count calculator.cr

execute as @e[type=marker,tag=__spawner.unintialized,limit=1,sort=random] at @s run function gen:place/room/post/spawner/each

execute as @e[type=marker,tag=__spawner.unintialized] at @s run function gen:place/room/post/spawner/void