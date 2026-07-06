execute unless score @s leave_game matches 1 run return run kill

scoreboard players operation #here room = @s room
scoreboard players set #active calculator.cr 0
execute as @a[gamemode=!spectator] unless score @s revive_cd matches 1.. if score @s room = #here room run scoreboard players set #active calculator.cr 1
execute unless score #active calculator.cr matches 1 run return fail

execute unless entity @s[tag=initialized] run function rcore:ai/slime/calc_home
scoreboard players add @s genericCD 1

# Logics
execute if score #loop_5 calculator.cr matches 0 if score @s interaction matches 1.. run function rcore:ai/slime/scatter/pop
execute if score #loop_5 calculator.cr matches 3 if score @s interaction matches 1.. run function rcore:ai/slime/scatter/pop

execute if score @s genericCD matches 600 run function rcore:ai/slime/scatter/run
execute if score @s genericCD matches 1200 run function rcore:ai/slime/collide/run
execute if score @s genericCD matches 1200..1300 as @e[type=slime,tag=slime_king_sup,distance=..100] at @s facing entity @e[type=slime,limit=1,distance=..100,tag=boss.slime_king] eyes positioned ^ ^ ^0.4 run function rcore:ai/slime/collide/small_slime

execute if score @s genericCD matches 600..1200 run function rcore:ai/slime/scatter/tp

execute if score @s genericCD matches 1300 as @e[type=slime,tag=slime_king_sup,distance=..100] at @s run function gen:place/erase/kill
execute if score @s genericCD matches 1301.. run function rcore:ai/slime/collide/merge



# Bossbar Related
execute unless score #loop_20 calculator.cr matches 2 run return fail
execute store result score #hp calculator.cr run data get entity @s Health
execute if score @s genericCD matches ..600 store result bossbar rcore:boss/slime_king value run scoreboard players remove #hp calculator.cr 400
execute if score #hp calculator.cr matches ..0 run return run function rcore:ai/slime/die
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
tag @a[gamemode=spectator,distance=..30] add __this
bossbar set rcore:boss/slime_king players @a[tag=__this]
tag @a remove __this